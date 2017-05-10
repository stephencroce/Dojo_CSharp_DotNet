using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp.AjaxLocal
{
    public partial class ajaxReturn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Response.Write("Page_Load<br/>");
            
            if(Request.QueryString["writeYourName"]!=null)
            {
            if (Request.QueryString["writeYourName"] == "true")
            {
                //this.Literal1.Text = "Stephen Croce";
            }
            else
            {
                //this.Literal1.Text = "You chose not to write your name.";
            }
            }
            //string writeYourName = Request.QueryString["writeYourName"]=="true"?"Stephen Croce":"Somebody else";
            //this.Literal1.Text = writeYourName;
 
            string query = Request.QueryString["q"] ?? "";

            if(query!="")
                GetData(query);


        }
        protected void GetData(String someString)
        {
            // 1. Instantiate the connection
            SqlConnection conn = new SqlConnection("Data Source=STEVE-SSD-I7-PC\\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True");

            //Data Source=STEVE-SSD-I7-PC\SQLEXPRESS;Initial Catalog=KenticoCMSTest;Integrated Security=True
            //Data Source=STEVE-SSD-I7-PC\SQLEXPRESS;Initial Catalog=Northwind;Integrated Security=True
            SqlDataReader rdr = null;

            try
            {
                // 2. Open the connection
                conn.Open();

                // 3. Pass the connection to a command object
                SqlCommand cmd = new SqlCommand("select FirstName from Employees WHERE FirstName LIKE N'%" + someString + "%'", conn);

                //
                // 4. Use the connection
                //

                // get query results
                rdr = cmd.ExecuteReader();

                // print the CustomerID of each record
                while (rdr.Read())
                {
                    Response.Write(rdr[0] + "<br/>");
                }
            }
            finally
            {
                // close the reader
                if (rdr != null)
                {
                    rdr.Close();
                }

                // 5. Close the connection
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}