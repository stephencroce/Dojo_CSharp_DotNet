using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp
{
    public class thing
    {
        //this is a thing
        public string Name { get; set; }
        
            
        
            //public thing() { }
        enum Cards { Clubs, Spades, Hearts, Diamonds };


        public string writeSomething()
        {
            
      
            return "I am writing something now";
           
        }

        public string getSuit()
        {

            //Cards myCard = Cards.Clubs();
            //return myCard.ToString();
            //return "Clubs";

            Cards myCard = new Cards();
            myCard = Cards.Hearts;            
            return myCard.ToString();

        }
    }
}
