
#if ANDROID
using Android.Gms.Maps;
using Android.Gms.Maps.Model;
using Microsoft.Maui.Platform;
#endif

#if ANDROID
public class CircleOverlayCallback : Java.Lang.Object, IOnMapReadyCallback
{
    private readonly double _lat;
    private readonly double _lng;

    // Internal list to track all drawn circles
    private static readonly List<Circle> Circles = new();

    public CircleOverlayCallback(double lat, double lng)
    {
        _lat = lat;
        _lng = lng;
    }

    public void OnMapReady(GoogleMap googleMap)
    {
        var circleOptions = new CircleOptions()
            .InvokeCenter(new LatLng(_lat, _lng))
            .InvokeRadius(3) // meters
            .InvokeFillColor(Android.Graphics.Color.Argb(255, 0, 122, 255)) // Semi-transparent blue
            .InvokeStrokeColor(Android.Graphics.Color.Transparent)
            .InvokeStrokeWidth(0);

        Circle circle = googleMap.AddCircle(circleOptions);
        AddCircle(circle);
    }

    public static void AddCircle(Circle circle)
    {
            Circles.Add(circle);
    }

    public static void ClearAllCircles()
    {
        foreach (var circle in Circles)
        {
            circle?.Remove();
        }
        Circles.Clear();
    }
}
#endif
