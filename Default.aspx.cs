using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using SharpPieces.Web.Controls;
using log4net;

namespace TestCSharpApp
{
    //public partial class _Default : System.Web.UI.Page
    public partial class _Default : TestCSharpAppPageBase 
    {
        protected void Log4Button_Click(object source, EventArgs e)
        {
            Loggah.Debug("you clicked the log4 Button on," + DateTime.Now.ToString() + " didn't you?");
            Response.Write("you clicked the log4 Button on," + DateTime.Now.ToString() + " didn't you?");

        }
        void btnPostback_Click(object sender, EventArgs e)
        {
            //more sharp pieces library crap
            StringBuilder sbGroups = new StringBuilder();
            sbGroups.AppendFormat("selected item group for {0}: {1}<br />",
                ddl.ID, ddl.SelectedGroup);
            sbGroups.AppendFormat("selected item group for {0}: {1}<br />",
                ExtendedDropDownList1.ID,
                ExtendedDropDownList1.SelectedGroup);

            this.lblSelGroup.Text = sbGroups.ToString();

            Response.Write("<br/>The selected value was:  " + this.ddl.SelectedValue  + "-" + this.ddl.SelectedItem.Text);
        }

        protected void Page_Load(object sender, EventArgs e)
        {



            //sharp pieces - START


            if (!this.IsPostBack)
            {
                //populate combobox

                this.ddl.ExtendedItems.Add("Choose an item...");
                this.ddl.ExtendedItems.Add(new ExtendedListItem("Monitor", "12", true, ListItemGroupingType.New,
                    "Computers"));

                this.ddl.ExtendedItems.Add(new ExtendedListItem("Mouse", "13", ListItemGroupingType.Inherit));
                this.ddl.ExtendedItems.Add(new ExtendedListItem("Keyboard", "14", ListItemGroupingType.Inherit));

                this.ddl.ExtendedItems.Add(new ExtendedListItem("iPhone", "21", true, ListItemGroupingType.New,
                    "Phones"));
                this.ddl.ExtendedItems.Add(new ExtendedListItem("gPhone", "22", ListItemGroupingType.Inherit));
                this.ddl.ExtendedItems.Add(new ExtendedListItem("HTC S730", "23", ListItemGroupingType.Inherit));

                this.ddl.ExtendedItems[1].Attributes.Add("key1", "val1");
                this.ddl.ExtendedItems[2].Attributes.Add("key2", "val2");
            }

            this.btnPostback.Click += new EventHandler(btnPostback_Click);


            //sharp pieces - END




            thing thing = new thing();
            Type myType = thing.GetType();

            //myType.GetProperties();

            PropertyInfo[] propertyInfo = myType.GetProperties();

            foreach (PropertyInfo p in propertyInfo)
            {
                Response.Write("lala" + p.Name + "<br/>");
            }


            System.Globalization.TextInfo textInfo  = new System.Globalization.CultureInfo("en-US",false).TextInfo;

            String bob = "bob";
            String BOB = textInfo.ToTitleCase(bob);



            List<string> dogs = new List<string>(); // Example List

            dogs.Add("spaniel");         // Contains: spaniel
            dogs.Add("beagle");          // Contains: spaniel, beagle
            dogs.Add("greyhound");
            //dogs.Insert(1, "dalmation"); // Contains: spaniel, dalmation, beagle


            List<string> newdogs = new List<string>();

            foreach (string dog in dogs) // Display for verification
            {
                Response.Write(dog);

            }

            Response.Write("<br/>");

            foreach(string dog in dogs) // Display for verification
            {
                if (dog == ("beagle"))
                {
                    newdogs.Add("shnauzer");
                }

                Response.Write("<br/>");

          

            }

            foreach (string newdog in newdogs) // Display for verification
            {
                Response.Write(newdog);
            }

            //protected void LinkButton1_Click(object sender, EventArgs e)
            //{

            //}

            ILog logger = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            logger.Debug("crapola");

    
            //= myType.GetProperties();
        }
    }

}