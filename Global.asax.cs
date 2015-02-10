using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TestCSharpApp
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            
            
            //log4net.Config.XmlConfigurator.Configure();


            // configure log4net
            string file = HttpRuntime.AppDomainAppVirtualPath + "/log4netMYTEST.config";
            //string file = HttpRuntime.AppDomainAppVirtualPath + "/Web.config";
            file = Server.MapPath(file);
            System.IO.FileInfo fi = new System.IO.FileInfo(file);
            log4net.Config.XmlConfigurator.ConfigureAndWatch(fi);
            //Log.Info("Application Start >>>>>> ++");
            //Log.Error("Application Started - This email was sent as an alert only. There is no error. Please use this email to monitor the number of times the application is reloaded.");

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}