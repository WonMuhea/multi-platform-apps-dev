namespace LocationTrackerApp;

public partial class App : Application
{
	public App()
	{
		InitializeComponent();
		AppDomain.CurrentDomain.UnhandledException += (s, e) =>
		{
			Console.WriteLine($"[FATAL] {e.ExceptionObject}");

		};



		TaskScheduler.UnobservedTaskException += (s, e) =>
		{
			Console.WriteLine($"[TASK EXCEPTION] {e.Exception}");
			e.SetObserved();
		};

	}

	protected override Window CreateWindow(IActivationState? activationState)
	{
		return new Window(new MainPage());
	}


}
