using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestCSharpApp
{
    public partial class ReverseIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<int> ints = new List<int>();
            

        }
        protected String reverseIt(string someString)
        {
            string returnval="";

            //split it into a char array
            char[] charArray = someString.ToCharArray();

            //List<Char> reversed = new List<char>();

            for (int i = charArray.Length-1; i >= 0; i-- )
            {
                Response.Write(charArray[i]);

            }

                return returnval;
        }
        protected void button_Click(object sender, EventArgs e)
        {
            //Response.Write(reverseIt(this.TextBox1.Text)); 
            reverseIt(this.TextBox1.Text);

            string doofus = "doofus";
            char[] doofusChar = doofus.ToCharArray();
            Response.Write("the character is: " + doofusChar[1]);


            //Response.Write(doofusChar);

        }
    }
}