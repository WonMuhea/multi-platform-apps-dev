package crc64bec9c5d76fac57d0;


public class CircleOverlayCallback
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.OnMapReadyCallback
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onMapReady:(Lcom/google/android/gms/maps/GoogleMap;)V:GetOnMapReady_Lcom_google_android_gms_maps_GoogleMap_Handler:Android.Gms.Maps.IOnMapReadyCallbackInvoker, Xamarin.GooglePlayServices.Maps\n" +
			"";
		mono.android.Runtime.register ("CircleOverlayCallback, LocationTrackerApp", CircleOverlayCallback.class, __md_methods);
	}


	public CircleOverlayCallback ()
	{
		super ();
		if (getClass () == CircleOverlayCallback.class) {
			mono.android.TypeManager.Activate ("CircleOverlayCallback, LocationTrackerApp", "", this, new java.lang.Object[] {  });
		}
	}

	public CircleOverlayCallback (double p0, double p1)
	{
		super ();
		if (getClass () == CircleOverlayCallback.class) {
			mono.android.TypeManager.Activate ("CircleOverlayCallback, LocationTrackerApp", "System.Double, System.Private.CoreLib:System.Double, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public void onMapReady (com.google.android.gms.maps.GoogleMap p0)
	{
		n_onMapReady (p0);
	}

	private native void n_onMapReady (com.google.android.gms.maps.GoogleMap p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
