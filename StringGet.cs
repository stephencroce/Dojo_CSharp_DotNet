using System;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp
{
    public class StringGet
    {
        public static string GetPageAsString(Uri address)
        {
            string result = "";

            // Create the web request  
            HttpWebRequest request = WebRequest.Create(address) as HttpWebRequest;
            

            // Get response  
            using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
            {
                // Get the response stream  
                StreamReader reader = new StreamReader(response.GetResponseStream());

                // Read the whole contents and return as a string  
                result = reader.ReadToEnd();
            }

            return result;
        }
    }  
}
