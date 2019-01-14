using System;
using System.Data;
using System.Configuration;
using System.Diagnostics;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp.Internal
{
    public class TestAccess
    {
        static void Main()
        {
            BaseClass myBase = new BaseClass();
            BaseClass.intM = 4454;

            Debug.Print("hello");

        }
    }
}
