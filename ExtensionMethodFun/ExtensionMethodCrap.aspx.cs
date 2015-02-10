using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp.ExtensionMethodFun
{
    public partial class ExtensionMethodCrap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stupidhead = "6";

            Response.Write("is the stupidhead variable numeric? " + stupidhead.IsNumeric() + "<br>");

            Car myCar = new Car();

            Response.Write(myCar.Start());
            Response.Write("wow, you are going " + myCar.Speed(150) + "m.p.h.!<br>");

            //http://www.dotnetperls.com/extension
            //**Check it out - In Visual Studio, an extension method in IntelliSense has a downward arrow on it. This is a visual clue to how methods are represented.
            Response.Write("Uh OH - - hit the brakes! " + myCar.Stop());

        }
    }
}