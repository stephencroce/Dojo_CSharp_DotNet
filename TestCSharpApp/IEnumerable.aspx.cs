using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp
{
    public partial class IEnumerable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String name;

            name = "steve";

            Response.Write(name);

           // IEnumerable<String> names;

            List<String> names1 = new List<string>();

            names1.Add("amy");
            names1.Add("laura");
            names1.Add("steve");

            foreach(var name1 in names1)
            {
                Response.Write(name1 + "<br/>");
            }


            //String[] names = new string["bob", "joe", "fred"];



        }
    }
}