using CoreLocation;
using MapKit;
using UIKit;
using Microsoft.Maui.Maps.Handlers;
using Microsoft.Maui.Platform;
using Microsoft.Maui.Maps.Platform;

namespace LocationTrackerApp.Platforms.iOS
{
    public class CustomMapHandler : MapHandler
    {
        protected override void ConnectHandler(MauiMKMapView platformView)
        {
            base.ConnectHandler(platformView);

            platformView.OverlayRenderer = (map, overlay) =>
            {
                if (overlay is MKCircle circle)
                {
                    var renderer = new MKCircleRenderer(circle);

                    if (circle.Radius > 2)
                    {
                        renderer.FillColor = UIColor.Red.ColorWithAlpha(0.6f); // 🔴 blurry heat glow
                    }
                    else
                    {
                        renderer.FillColor = UIColor.Blue.ColorWithAlpha(1.0f); // 🔵 crisp dot
                    }
                    renderer.Alpha = 0.6f;
                    return renderer;
                }

                return new MKOverlayRenderer();
            };
        }
    }
    

}

