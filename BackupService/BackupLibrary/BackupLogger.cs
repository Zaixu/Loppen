using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using System.Net;
using System.IO;
using System.Diagnostics.Eventing.Reader;
using System.Threading;
using System.Globalization;


namespace BackupLibrary
{
    /// <summary>
    /// Class to take a log file at event and upload it through ftp
    /// </summary>
    public class BackupLogger
    {
        private EventLog windowsServerBackup = new EventLog("Application");
        private string host;
        private string username;
        private string password;
        private CultureInfo startCultureInfo = Thread.CurrentThread.CurrentCulture;
        private CultureInfo tempCultureInfo = new CultureInfo("en-US");

        /// <summary>
        /// Constructor - class variables to function
        /// </summary>
        /// <param name="_operation">Enum how the backup should function</param>
        /// <param name="_username">Username for FTP</param>
        /// <param name="_password">Password for FTP</param>
        /// <param name="_host">Host address for file</param>
        public BackupLogger(string _username, string _password, string _host)
        {
            //Assign
            host = _host;
            username = _username;
            password = _password;
        }

        /// <summary>
        /// Start class - Subscribe to events
        /// </summary>
        public void Start()
        {
            windowsServerBackup.EntryWritten += WindowsServerBackup_EntryWritten;
            windowsServerBackup.EnableRaisingEvents = true;
            // Initiate, create it
            FTPUpload();
        }

        /// <summary>
        /// Stop class - Unsubscribe events and delete resources
        /// </summary>
        public void Stop()
        {
            windowsServerBackup.EntryWritten -= WindowsServerBackup_EntryWritten;
        }

        /// <summary>
        /// Uploads new file to FTP
        /// </summary>
        public void FTPUpload()
        {
            try
            {
                //Setup ftp address setup
                FtpWebRequest request = (FtpWebRequest)WebRequest.Create(host);
                //FTP Login details
                request.Credentials = new NetworkCredential(username, password);
                //Use active connection
                request.UsePassive = false;
                //Set FTP method
                request.Method = WebRequestMethods.Ftp.UploadFile;

                //Get the log for windows backup
                EventLogQuery query = new EventLogQuery("Microsoft-Windows-Backup", PathType.LogName);
                //Newest first
                query.ReverseDirection = true;
                //Make reader from query
                EventLogReader reader = new EventLogReader(query);

                //Get FTP Stream and setup streamwriter for string
                Stream requestStream = request.GetRequestStream();
                StreamWriter streamWriter = new StreamWriter(requestStream, Encoding.ASCII);

                //Eventrecord holder
                EventRecord eventRecord;

                //Set culture info to en-us, error in eventrecord.formatdescription, that takes locale to format
                Thread.CurrentThread.CurrentCulture = tempCultureInfo;

                //Write root json
                streamWriter.WriteLine("<Logs>");
                //As long as there is events, write them out in xml format
                while ((eventRecord = reader.ReadEvent()) != null)
                {
                    streamWriter.Write("<LogEntry>");
                    streamWriter.Write("<Time>");
                    streamWriter.Write(eventRecord.TimeCreated);
                    streamWriter.Write("</Time>");
                    streamWriter.Write("<Message>");
                    streamWriter.Write(eventRecord.FormatDescription());
                    streamWriter.Write("</Message>");
                    streamWriter.WriteLine("</LogEntry>");
                }
                //End json root
                streamWriter.Write("</Logs>");

                //Reset locale back to normal
                Thread.CurrentThread.CurrentCulture = startCultureInfo;

                //Close streams and remove all used resources
                streamWriter.Close();
            }
            catch(Exception e)
            {
                //Most likely connection issue
                LogToFile("Exeption cought: " + e.Message);
                return;
            }
        }

        /// <summary>
        /// Event function - Check if entry added to log is of source Backup then run function to backup
        /// </summary>
        /// <param name="sender">Sender object</param>
        /// <param name="e">Entry Written Event Arguments</param>
        public void WindowsServerBackup_EntryWritten(object sender, EntryWrittenEventArgs e)
        {
            if (e.Entry.Source == "Microsoft-Windows-Backup")
            {
                LogToFile("Accessed Backup: " + DateTime.Now.ToString());
                FTPUpload();
            }
        }

        /// <summary>
        /// Type access to log
        /// </summary>
        /// <param name="_message">Messege to log</param>
        public void LogToFile(string _message)
        {
            StreamWriter streamWriter = new StreamWriter("AccessLog.txt", true);
            streamWriter.WriteLine(_message);
            streamWriter.Close();
        }
    }
}