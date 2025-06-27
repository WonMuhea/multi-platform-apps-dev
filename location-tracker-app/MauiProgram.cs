using Microsoft.Maui;
using Microsoft.Maui.Hosting;
using Microsoft.Maui.Controls.Hosting;
using Microsoft.Maui.Controls.Maps;

#if IOS
using LocationTrackerApp.Platforms.iOS; // ✅ your custom handler namespace
using Microsoft.Maui.Handlers;
#endif

namespace LocationTrackerApp;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

        builder
            .UseMauiApp<App>()
            .UseMauiMaps() // ✅ Enables Microsoft.Maui.Controls.Maps.Map
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-SemiBold.ttf", "OpenSansSemiBold");
            });

#if IOS
        builder.ConfigureMauiHandlers(handlers =>
        {
            handlers.AddHandler(typeof(Microsoft.Maui.Controls.Maps.Map), typeof(CustomMapHandler)); // ✅ Register the custom handler
        });
#endif

        return builder.Build();
    }
}
