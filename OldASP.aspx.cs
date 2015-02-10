using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TestCSharpApp
{
    public partial class OldASP : System.Web.UI.Page
    {
        private String GetXml()
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine("<?xml version=\"1.0\" encoding=\"UTF-8\"?>")
            //sb.AppendLine("<?xml version=\"1.0\"?>")
              .AppendLine("<DCTOrderRequest xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"http://www.doody.com/ws/xsd/dct/DCTOrderRequest.xsd\">")
              //.AppendLine("<DCTOrderRequest>")
                    .AppendLine("<Customer>")
                        .AppendFormat("<ID>{0}</ID>", "123456").AppendLine()
                        .AppendFormat("<DistributorCustomerID>{0}</DistributorCustomerID>", "123456").AppendLine()
                        .AppendFormat("<Firstname>{0}</Firstname>", "Stephen").AppendLine()
                        .AppendFormat("<Lastname>{0}</Lastname>", "Croce").AppendLine()
                        .AppendFormat("<Affiliation>{0}</Affiliation>", "Technotects").AppendLine()
                        .AppendFormat("<BillingAddress1>{0}</BillingAddress1>", "1223Test").AppendLine()
                        .AppendFormat("<BillingAddress2>{0}</BillingAddress2>", "123Test").AppendLine()
                        .AppendFormat("<BillingCity>{0}</BillingCity>", "TESTCity").AppendLine()
                        .AppendFormat("<BillingState>{0}</BillingState>", "PA").AppendLine()
                        .AppendFormat("<BillingCountry>{0}</BillingCountry>", "USA").AppendLine()
                        .AppendFormat("<BillingPostalCode>{0}</BillingPostalCode>", "12345").AppendLine()
                        .AppendFormat("<Phone>{0}</Phone>", "215-867-5309").AppendLine()
                        .AppendFormat("<Fax>{0}</Fax>", "215-867-5309").AppendLine()
                        .AppendFormat("<Email>{0}</Email>", "StephenCroce@technotects.com").AppendLine()
                        .AppendLine("<Login>")
                               .AppendFormat("<LoginID>{0}</LoginID>", "123456").AppendLine()
                               .AppendFormat("<Password>{0}</Password>", "Password123").AppendLine()
                        .AppendLine("</Login>")
                    .AppendLine("</Customer>")
                    .AppendLine("<Order>")
                        .AppendFormat("<Edition>{0}</Edition>", "2011").AppendLine()
                        .AppendFormat("<PurchaseDate>{0}</PurchaseDate>", "2011-07-18").AppendLine()
                        .AppendFormat("<NotifyOthers>{0}</NotifyOthers>", "true").AppendLine()
                        .AppendFormat("<ProductID>{0}</ProductID>", "50").AppendLine()
                        .AppendFormat("<StandingOrder>{0}</StandingOrder>", "Y").AppendLine()
                    .AppendLine("</Order>")
                .AppendLine("</DCTOrderRequest>")
                ;

            return sb.ToString();
            //return "<?xml version=\"1.0\"?><books><book><title>test</title></book></books>";


        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //How do you do this in ASP.NET????

            //function sendxmlrequest(byval stremail)

            String cxmltosend;
            String strrequest;

            //rem for debug only
            //'url = "http://www.doody.com/ws/dct/testinterface.asp"

            //rem real
            String url = "http://www.doody.com/ws/dct/interface.asp";

            cxmltosend = GetXml();

            // xml = Server.CreateObject("Microsoft.XMLHTTP");

              Object objXML = Server.CreateObject("Microsoft.XMLHTTP");
            
            
            //    'Create the requestBody from the methodName and paramArr
            //strrequest = "AuthToken={51C313B7-4C3F-4ECC-BB1F-16CEA240983B}&DCTOrderRequest=" & Server.URLEncode(cxmltosend);

            cxmltosend = System.Web.HttpUtility.UrlEncode(cxmltosend);

            strrequest = "AuthToken={51C313B7-4C3F-4ECC-BB1F-16CEA240983B}&DCTOrderRequest=" + cxmltosend;
            

            //    'Create and Send the XML Post Request
                    // objXML = Server.CreateObject("Microsoft.XMLHTTP")
               //     objXML.open "POST", url, false

            //        'objXML.setRequestHeader "Content-type", "text/xml"		
            //        objXML.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
            //        objXML.send(strrequest)


            //        'Set xmlReq = Server.CreateObject("Msxml2.DOMDocument.3.0")
            //        'Call xmlReq.load(Request)

            //        'optionally, and you can save it
            //        'Call xmlReq.save("C:\MyDocument.xml")

            //        'Write out to view
            //        serverResponseText=objXML.responseText

            //        rem for debugonly
            //        'Response.Write serverResponseText

            //        interror = instr(serverResponseText, "<Error>")

            //        if interror = 0 then
            //        'on error resume next
            //            strlength = instr(serverResponseText, "<Code>")
            //            strname= Mid(serverResponseText,strlength+6,1)
            //            strlength1 = instr(serverResponseText, "<Message>")
            //            strlength2 = instr(serverResponseText, "</Message>")
            //            delta = strlength2 - strlength1

            //            strmsg = Mid(serverResponseText,strlength1+9,delta-9)


            //            REM get customerID
            //            custdes1 = instr(serverResponseText, "<CustomerID>")
            //            custdes2 = instr(serverResponseText, "</CustomerID>")
            //            custlength = custdes2 - custdes1
            //            strcust = Mid(serverResponseText,custdes1+12,custlength-12)

            //            REM get Edition
            //            Editiondes1 = instr(serverResponseText, "<Edition>")
            //            Editiondes2 = instr(serverResponseText, "</Edition>")
            //            Editionlength = Editiondes2 - Editiondes1
            //            strEdition = Mid(serverResponseText,Editiondes1+9,Editionlength-9)
            //           'Response.Write strmsg & "|" & strname & "|" & strcust &  "|" & strEdition
            //            'Response.end

            //            if strname = "0" then
            //             call updatedcttable(stremail,1,strmsg,strcust,strEdition)
            //            else
            //             call updatedcttable(stremail,0,strmsg,strcust,strEdition)
            //            end if
            //             sendxmlrequest= true
            //        else
            //            errordes1 = instr(serverResponseText, "<Description>")
            //            errordes2 = instr(serverResponseText, "</Description>")
            //            errorlength = errordes2 - errordes1
            //            strmsg = Mid(serverResponseText,errordes1+13,errorlength-13)
            //            strcust= ""
            //            strEdition =""
            //            call updatedcttable(stremail,0,strmsg,strcust,strEdition)
            //            sendxmlrequest = false
            //        end if
            //end function

        }
    }
}
