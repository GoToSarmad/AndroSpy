package izci;


public class AdminReceiver
	extends android.app.admin.DeviceAdminReceiver
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Task2.AdminReceiver, ServicesDemo3", AdminReceiver.class, __md_methods);
	}


	public AdminReceiver ()
	{
		super ();
		if (getClass () == AdminReceiver.class)
			mono.android.TypeManager.Activate ("Task2.AdminReceiver, ServicesDemo3", "", this, new java.lang.Object[] {  });
	}

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
