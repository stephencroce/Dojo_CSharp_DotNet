using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using log4net;

namespace TestCSharpApp
{
    public class TestCSharpAppPageBase : Page
    {
        protected static ILog Loggah = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
    }
}