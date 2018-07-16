using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BCOM = Bentley.Interop.MicroStationDGN;
using Bentley.DgnPlatformNET;
using Bentley.MstnPlatformNET;

namespace adrstmsc
{
    [Bentley.MstnPlatformNET.AddInAttribute(MdlTaskID = "AccuDrawReset")]
    public sealed class Program : Bentley.MstnPlatformNET.AddIn
    {
        public static Program App { get; private set; }

        public BCOM.Application Context { get; private set; }
        //private static ORDSignsApp s_ordsigns = null;

        MouseHook mouseHook = new MouseHook();

        public Program(System.IntPtr mdlDesc)
            : base(mdlDesc)
        {
            App = this;
        }

        protected override int Run(string[] commandLine)
        {
            return 0;
        }

        internal static Program Instance()
        {
            return App;
        }

        internal void LoadMain()
        {
            Context = Bentley.MstnPlatformNET.InteropServices.Utilities.ComApp;
            mouseHook.Install();
            mouseHook.RightButtonUp += new MouseHook.MouseHookCallback(mouseHook_RightButtonUp);
        }

        static void mouseHook_RightButtonUp(MouseHook.MSLLHOOKSTRUCT target)
        {
            Program.App.Context.CadInputQueue.SendKeyin("mdl keyin accudraw accudraw dialog");
        }

        public static DgnModel GetActiveDgnModel()
        {
            return Session.Instance.GetActiveDgnModel();
        }

        public static DgnFile GetActiveDgnFile()
        {
            return Session.Instance.GetActiveDgnFile();
        }

        internal void HorizontalAlignmentReport(bool reportAsAnnotation)
        {

        }
    }

    public class Keyin
    {
        public static void CmdLoadMain(string unparsed)
        {
            Program.Instance().LoadMain();
        }
    }
}
