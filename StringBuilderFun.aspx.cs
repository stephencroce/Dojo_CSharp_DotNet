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

using System.Text;

namespace TestCSharpApp
{
    public partial class StringBuilderFun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ////Strinbuilder class in found in System.Text namespace
            //System.Text.StringBuilder sb = new System.Text.StringBuilder();
            //StringBuilder mySB = new StringBuilder();

            //sb.Append("Hel");
            //sb.Append("la,");
            //sb.Append(" War");
            //sb.Append("ld!");


            //Response.Write("<br><h1>Capacity of sb is: " + sb.Capacity);

            //Response.Write("<br><br>Length is: " + sb.Length + "<br>");

            //for (int i = 0; i < sb.Length; i++)
            //    Response.Write(sb[i]);

            //Response.Write("<br>");

            //sb.Replace("a", "xxx");

            //for (int i = 0; i < sb.Length; i++)
            //    Response.Write(sb[i]);

            //Response.Write("</h1>");

            //Response.Write(WriteXml());

            //this.Xml1.

        }
        protected String WriteXml()
        {
            StringBuilder sb = new StringBuilder();
            //StringBuilder sb;
            String userID = "123456";
            String DCID = "654321";
            //String FirstName = SessionInfo.User.NameFirst;
            sb.AppendLine("<?xml version=\"1.0\" encoding=\"UTF32Encoding-8\"?>")
              .AppendLine(
                "<DCTOrderRequest xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:noNamespaceSchemaLocation=&quot;http://www.doody.com/ws/xsd/dct/DCTOrderRequest.xsd&quot;>")
                    .AppendLine("<Customer>")
                        .AppendFormat("<ID>{0}</ID>", userID).AppendLine()
                        .AppendFormat("<DistributorCustomerID>{0}</DistributorCustomerID>", DCID).AppendLine()
                        .AppendFormat("<Firstname>{0}</Firstname>", "Steve").AppendLine()
                        .AppendFormat("<Lastname>{0}</Lastname>", "Croce").AppendLine()
                        .AppendFormat("<Affiliation>{0}</Affiliation>", "Technotects").AppendLine()
                        .AppendFormat("<BillingAddress1>{0}</BillingAddress1>", "123 Main ST").AppendLine()
                        .AppendFormat("<BillingAddress2>{0}</BillingAddress2>", "Building 2").AppendLine()
                        .AppendFormat("<BillingCity>{0}</BillingCity>", "Lansdale").AppendLine()
                        .AppendFormat("<BillingState>{0}</BillingState>", "PA").AppendLine()
                        .AppendFormat("<BillingCountry>{0}</BillingCountry>", "USA").AppendLine()
                        .AppendFormat("<BillingPostalCode>{0}</BillingPostalCode>", "12345").AppendLine()
                        .AppendFormat("<Phone>{0}</Phone>", "215-867-5309").AppendLine()
                        .AppendFormat("<Fax>{0}</Fax>", "215-867-5309").AppendLine()
                        .AppendFormat("<Email>{0}</Email>", "doofus@doofus.com").AppendLine()
                        .AppendLine("<Login>")
                               .AppendFormat("<LoginID>{0}</LoginID>", "LOGIN").AppendLine()
                               .AppendFormat("<Password>{0}</Password>", "PASSWORD").AppendLine()
                        .AppendLine("</Login>")
                    .AppendLine("</Customer>")
                    .AppendLine("<Order>")
                        .AppendFormat("<Edition>{0}</Edition>", "2011").AppendLine()
                        .AppendFormat("<PurchaseDate>{0}</PurchaseDate>", "2011-07-15").AppendLine()
                        .AppendFormat("<NotifyOthers>{0}</NotifyOthers>", "true").AppendLine()
                        .AppendFormat("<ProductID>{0}</ProductID>", "50").AppendLine()
                        .AppendFormat("<StandingOrder>{0}</StandingOrder>", "Y").AppendLine()
                    .AppendLine("</Order>")
                .AppendLine("</DCTOrderRequest>")

                ;

            return sb.ToString();
        }

    }
}
