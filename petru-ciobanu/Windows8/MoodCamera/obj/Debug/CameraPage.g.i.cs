﻿

#pragma checksum "G:\Solaris\MoodCamera\MoodCamera\CameraPage.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "EC45551AFB38E6A4DE7B7A8E2BE30289"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MoodCamera
{
    partial class CameraPage : global::Windows.UI.Xaml.Controls.Page
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.TextBlock txtInfo; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.ListBox CameraListDevice; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.CaptureElement CameraPreview; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.TextBlock CounterText; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.Image PhotoCapture; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private global::Windows.UI.Xaml.Controls.Button BtnShare; 
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        private bool _contentLoaded;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent()
        {
            if (_contentLoaded)
                return;

            _contentLoaded = true;
            global::Windows.UI.Xaml.Application.LoadComponent(this, new global::System.Uri("ms-appx:///CameraPage.xaml"), global::Windows.UI.Xaml.Controls.Primitives.ComponentResourceLocation.Application);
 
            txtInfo = (global::Windows.UI.Xaml.Controls.TextBlock)this.FindName("txtInfo");
            CameraListDevice = (global::Windows.UI.Xaml.Controls.ListBox)this.FindName("CameraListDevice");
            CameraPreview = (global::Windows.UI.Xaml.Controls.CaptureElement)this.FindName("CameraPreview");
            CounterText = (global::Windows.UI.Xaml.Controls.TextBlock)this.FindName("CounterText");
            PhotoCapture = (global::Windows.UI.Xaml.Controls.Image)this.FindName("PhotoCapture");
            BtnShare = (global::Windows.UI.Xaml.Controls.Button)this.FindName("BtnShare");
        }
    }
}


