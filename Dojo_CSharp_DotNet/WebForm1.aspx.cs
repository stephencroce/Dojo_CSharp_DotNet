using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Response.Write("hello<br>");

           
           thing myThing = new thing();


           Response.Write(myThing.writeSomething());

           Response.Write("<br>");

           Response.Write("Your chosen card is the suit of " + myThing.getSuit());


//            Enum CardSuit
//        Clubs
//        Diamonds
//        Hearts
//        Spades
//End Enum
 
//Sub EnumExample()
//        Dim suit As CardSuit
//        suit = CardSuit.Diamonds
//        MsgBox(suit)
//End Sub

        //    enum CardSuit{clubs, diamonds, hearts, spades};

        //CardSuit MySuit = new CardSuit();


     


        }
    }
}
