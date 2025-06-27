using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Devices.Sensors;
using Microsoft.Maui.Maps;
using System;
using System.Threading;
using System.Threading.Tasks;
using LocationTrackerApp.Models;
using LocationTrackerApp.Services;
using Location = Microsoft.Maui.Devices.Sensors.Location;

#if IOS
using CoreLocation;
using MapKit;
using Microsoft.Maui.Platform;
#endif

namespace LocationTrackerApp;

public partial class MainPage : ContentPage
{
    private string _tripId = Guid.NewGuid().ToString();
    private bool _isTracking = false;
    private CancellationTokenSource? _cts;

    public MainPage()
    {
        InitializeComponent();
        _ = TripDatabase.InitAsync();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
        if (status != PermissionStatus.Granted)
        {
            status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
        }
    }

    private async void OnStartTrackingClicked(object sender, EventArgs e)
    {
        var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
        if (status != PermissionStatus.Granted)
        {
            status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
        }

        if (status != PermissionStatus.Granted)
        {
            await DisplayAlert("Permission Denied", "Location access is required.", "OK");
            return;
        }

        if (!_isTracking)
        {
            _isTracking = true;
            _ = StartTracking();
        }
    }

    private void OnStopTrackingClicked(object sender, EventArgs e)
    {
        if (_cts != null && !_cts.IsCancellationRequested)
        {
            _cts.Cancel();
            _isTracking = false;
            DisplayAlert("Tracking", "Stopped tracking.", "OK");
        }
    }

    private async void OnClearDataClicked(object sender, EventArgs e)
    {
        bool confirm = await DisplayAlert("Confirm", "Clear all tracked data?", "Yes", "No");
        if (!confirm) return;

        await TripDatabase.ClearAllAsync();
        MyMap.MapElements.Clear();
        MyMap.Pins.Clear();
        ClearPlatformMapOverlays();

        _tripId = Guid.NewGuid().ToString();
        await DisplayAlert("Cleared", "All trip data has been cleared.", "OK");
    }

    private async Task StartTracking()
    {
        _cts = new CancellationTokenSource();

        while (!_cts.IsCancellationRequested)
        {
            try
            {
                var location = await Geolocation.GetLocationAsync(
                    new GeolocationRequest(GeolocationAccuracy.Best, TimeSpan.FromSeconds(5)));

                if (location != null)
                {
                    var (interval, mode) = GetTrackingIntervalAndMode(location.Speed ?? 0);
                    Console.WriteLine($"Speed: {location.Speed:F2} m/s, Mode: {mode}, Delay: {interval}ms");
                    await Task.Delay(interval, _cts.Token);
                    var lat = location.Latitude;
                    var lng = location.Longitude;

                    await TripDatabase.SaveLocationAsync(new TripLocation
                    {
                        TripId = _tripId,
                        Latitude = lat,
                        Longitude = lng,
                        Timestamp = DateTime.UtcNow
                    });

                    MyMap.MoveToRegion(MapSpan.FromCenterAndRadius(
                        new Location(lat, lng), Distance.FromMeters(100)));

                    AddMapPoint(lat, lng);
                    await Task.Delay(interval, _cts.Token); // Tighter trail
                }

              
            }
            catch (TaskCanceledException)
            {
                break;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
    }

    // 🔄 Shared method for all platforms
    private void AddMapPoint(double lat, double lng)
    {
#if IOS
        AddIOSOverlay(lat, lng);
#endif

#if ANDROID
        AddAndroidCircle(lat, lng);
#endif
    }

#if IOS
    private void AddIOSOverlay(double lat, double lng)
    {
        if (MyMap?.Handler?.PlatformView is MKMapView mapView)
        {
            var coords = new CLLocationCoordinate2D(lat, lng);

            var redCircle = MKCircle.Circle(coords, 4); // blurred trail
            var blueCircle = MKCircle.Circle(coords, 2); // sharp dot

            mapView.AddOverlay(redCircle);
            mapView.AddOverlay(blueCircle);
        }
    }

    private void ClearPlatformMapOverlays()
    {
        if (MyMap?.Handler?.PlatformView is MKMapView mapView)
        {
            mapView.RemoveOverlays(mapView.Overlays);
        }
    }
#endif

#if ANDROID
    private void AddAndroidCircle(double lat, double lng)
    {
        if (MyMap?.Handler?.PlatformView is Android.Gms.Maps.MapView mapView)
        {
            mapView.GetMapAsync(new CircleOverlayCallback(lat, lng));
        }
    }
    private void ClearPlatformMapOverlays() 
    {
        CircleOverlayCallback.ClearAllCircles();
    }

#endif

private (int intervalMs, string mode) GetTrackingIntervalAndMode(double speed)
{
    if (speed <= 2)
        return (1100, "Walking");
    else if (speed <= 6)
        return (1000, "Cycling");
    else
        return (500, "Driving");
}

}
