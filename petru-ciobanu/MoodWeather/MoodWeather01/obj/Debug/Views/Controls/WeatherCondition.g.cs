﻿#pragma checksum "G:\MoodWeatherFinal\MoodWeatherFinal\MoodWeather01\Views\Controls\WeatherCondition.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "F6CFA715E779DC5FFD61471447D19B4A"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18033
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Resources;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace MoodWeather.Views.Controls {
    
    
    public partial class WeatherCondition : System.Windows.Controls.UserControl {
        
        internal System.Windows.Controls.Grid LayoutRoot;
        
        internal Telerik.Windows.Controls.RadGridView GridView;
        
        internal System.Windows.Controls.BusyIndicator busyIndicator;
        
        internal System.Windows.Controls.Button BtnStartService;
        
        internal System.Windows.Controls.Button BtnGetCondition;
        
        internal System.Windows.Controls.Button BtnGenerateXml;
        
        internal Telerik.Windows.Controls.RadDataPager dataPager;
        
        internal System.Windows.Controls.Button BtnDownloadXml;
        
        internal System.Windows.Controls.Button BtnUploadXml;
        
        internal System.Windows.Controls.Button BtnPublishToFtp;
        
        internal System.Windows.Controls.Label Label1;
        
        internal System.Windows.Controls.Label cityCounts;
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Windows.Application.LoadComponent(this, new System.Uri("/MoodWeather;component/Views/Controls/WeatherCondition.xaml", System.UriKind.Relative));
            this.LayoutRoot = ((System.Windows.Controls.Grid)(this.FindName("LayoutRoot")));
            this.GridView = ((Telerik.Windows.Controls.RadGridView)(this.FindName("GridView")));
            this.busyIndicator = ((System.Windows.Controls.BusyIndicator)(this.FindName("busyIndicator")));
            this.BtnStartService = ((System.Windows.Controls.Button)(this.FindName("BtnStartService")));
            this.BtnGetCondition = ((System.Windows.Controls.Button)(this.FindName("BtnGetCondition")));
            this.BtnGenerateXml = ((System.Windows.Controls.Button)(this.FindName("BtnGenerateXml")));
            this.dataPager = ((Telerik.Windows.Controls.RadDataPager)(this.FindName("dataPager")));
            this.BtnDownloadXml = ((System.Windows.Controls.Button)(this.FindName("BtnDownloadXml")));
            this.BtnUploadXml = ((System.Windows.Controls.Button)(this.FindName("BtnUploadXml")));
            this.BtnPublishToFtp = ((System.Windows.Controls.Button)(this.FindName("BtnPublishToFtp")));
            this.Label1 = ((System.Windows.Controls.Label)(this.FindName("Label1")));
            this.cityCounts = ((System.Windows.Controls.Label)(this.FindName("cityCounts")));
        }
    }
}

