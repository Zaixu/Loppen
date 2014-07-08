using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using BackupLibrary;

namespace BackupService
{
    /// <summary>
    /// Class to function as windows service
    /// </summary>
    public partial class Service : ServiceBase
    {
        private BackupLogger lib = new BackupLogger("crynac", "123789", "ftp://192.168.137.129/public_html/BackupLog.txt");

        public Service()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            //Start backuplogger to listen to events
            lib.Start();
        }

        protected override void OnStop()
        {
            //Stop backuplogger and remove event listening
            lib.Stop();
        }
    }
}
