using System;
using System.IO;
using System.Net;
using System.Text;
using System.Diagnostics;
using System.Web.UI.WebControls;
using System.Xml;


namespace TestCSharpApp
{
    public partial class WebService : System.Web.UI.Page
    {
        

        private String GetXml()
        {
            StringBuilder sb = new StringBuilder();

            ////005034
            //sb.AppendLine("<?xml version='1.0' encoding='UTF-8'?>")
            ////sb.AppendLine("<?xml version=\"1.0\"?>")
            //  //.AppendLine("<DCTOrderRequest xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"http://www.doody.com/ws/xsd/dct/DCTOrderRequest.xsd\">")
            //  .AppendLine("<DCTOrderRequest>")  
            //        .AppendLine("<Customer>")
            //            //.AppendFormat("<ID>{0}</ID>", "123456").AppendLine()
            //            //.AppendFormat("<DistributorCustomerID>{0}</DistributorCustomerID>", "123456").AppendLine()
            //            .AppendFormat("<ID>{0}</ID>", "21243").AppendLine()
            //            .AppendFormat("<DistributorCustomerID>{0}</DistributorCustomerID>", "123456").AppendLine()
            //            .AppendFormat("<Firstname>{0}</Firstname>", "Stephen").AppendLine()
            //            .AppendFormat("<Lastname>{0}</Lastname>", "Croce").AppendLine()
            //            .AppendFormat("<Affiliation>{0}</Affiliation>", "Technotects").AppendLine()
            //            .AppendFormat("<BillingAddress1>{0}</BillingAddress1>", "1223Test").AppendLine()
            //            .AppendFormat("<BillingAddress2>{0}</BillingAddress2>", "123Test").AppendLine()
            //            .AppendFormat("<BillingCity>{0}</BillingCity>", "TESTCity").AppendLine()
            //            .AppendFormat("<BillingState>{0}</BillingState>", "PA").AppendLine()
            //            .AppendFormat("<BillingCountry>{0}</BillingCountry>", "USA").AppendLine()
            //            .AppendFormat("<BillingPostalCode>{0}</BillingPostalCode>", "12345").AppendLine()
            //            .AppendFormat("<Phone>{0}</Phone>", "215-867-5309").AppendLine()
            //            .AppendFormat("<Fax>{0}</Fax>", "215-867-5309").AppendLine()
            //            .AppendFormat("<Email>{0}</Email>", "StephenCroce@technotects.com").AppendLine()
            //            .AppendLine("<Login>")
            //                   //.AppendFormat("<LoginID>{0}</LoginID>", "123456").AppendLine()
            //                   //.AppendFormat("<Password>{0}</Password>", "Password123").AppendLine()
            //                   .AppendFormat("<LoginID>{0}</LoginID>", "scroce1").AppendLine()
            //                   .AppendFormat("<Password>{0}</Password>", "mf23ob2m").AppendLine()
            //            .AppendLine("</Login>")
            //        .AppendLine("</Customer>")
            //        .AppendLine("<Order>")
            //            .AppendFormat("<Edition>{0}</Edition>", "2011").AppendLine()
            //            .AppendFormat("<PurchaseDate>{0}</PurchaseDate>", "2011-07-18").AppendLine()
            //            .AppendFormat("<NotifyOthers>{0}</NotifyOthers>", "true").AppendLine()
            //            .AppendFormat("<ProductID>{0}</ProductID>", "50").AppendLine()
            //            .AppendFormat("<StandingOrder>{0}</StandingOrder>", "Y").AppendLine()
            //        .AppendLine("</Order>")
            //    .AppendLine("</DCTOrderRequest>")
            //    ;



            sb.AppendLine("<?xml version='1.0' encoding='UTF-8'?>")
              .AppendLine("<DCTOrderRequest xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:noNamespaceSchemaLocation='http://www.doody.com/ws/xsd/dct/DCTOrderRequest.xsd'>")                
                    .AppendLine("<Customer>")
                        .AppendLine("<ID>1234521243</ID>")
                        .AppendLine("<DistributorCustomerID>12345005034</DistributorCustomerID>")
                        .AppendLine("<Firstname>Stephen</Firstname>")
                        .AppendLine("<Lastname>Croce</Lastname>")
                        .AppendLine("<Affiliation>STEPHEN CROCE</Affiliation>")
                        .AppendLine("<BillingAddress1>Stephen Croce</BillingAddress1>")
                        .AppendLine("<BillingAddress2></BillingAddress2>")
                        .AppendLine("<BillingCity></BillingCity>")
                        .AppendLine("<BillingState></BillingState>")
                        .AppendLine("<BillingCountry></BillingCountry>")
                        .AppendLine("<BillingPostalCode></BillingPostalCode>")
                        .AppendLine("<Phone>)</Phone>")
                        .AppendLine("<Fax>)</Fax>")
                        .AppendLine("<Email>StephenCroce)@technotects.com</Email>")
                    .AppendLine("</Customer>")
                    .AppendLine("<Order>)")
                        .AppendLine("<Edition>2010</Edition>")
                        .AppendLine("<PurchaseDate>2011-07-20</PurchaseDate>")
                        .AppendLine("<NotifyOthers>true</NotifyOthers>")
                        .AppendLine("<ProductID>61</ProductID>")
                        .AppendLine("<StandingOrder>N</StandingOrder>")
                    .AppendLine("</Order>")
              .AppendLine("</DCTOrderRequest>")
            ;

  


            //huh????

            return System.Web.HttpUtility.UrlEncode(sb.ToString());
            //<?xml version="1.0" encoding="utf-8" ?>
            
            //return "<?xml version='1.0' ?><books><book><title>test</title></book></books>";

            //return System.Web.HttpUtility.UrlEncode("<?xml version='1.0' encoding='UTF-8'?><DCTOrderRequest>test</DCTOrderRequest>");
            //return "<books><book><title>test</title></book></books>";
            //return "&lt;?xml version='1.0'?&gt;&lt;books&gt;&lt;book&gt;&lt;title&gt;test&lt;/title&gt;&lt;/book&gt;&lt;/books&gt;";

            //2001XDCT.CallHandler.ExecuteParserErrCode: -1072896680 SrcText: FilePos: 0 LinePos: 0 Reason: XML document must have a top level element. 
            //FilePos: 12 LinePos: 13 Reason: A name contained an invalid character. 

        }


        //private string GetTextFromXMLFile(string file)
        //{
        //    StreamReader reader = new StreamReader(file);
        //    string ret = reader.ReadToEnd();
        //    reader.Close();
        //    return ret;
        //}

        protected void lnkWizP3Finish_Click(object sender, EventArgs e)
        {
            //WebRequestClass    WebClientClass
            //http://msdn.microsoft.com/en-us/library/5t9y35bd%28vs.71%29.aspx  - WebRequest Class
            //http://msdn.microsoft.com/en-us/library/tt0f69eh(vs.71).aspx  - WebClient Class   .Net 1.1
            //http://msdn.microsoft.com/en-us/library/system.net.webclient%28VS.80%29.aspx - WebClient Class .NET 2.0
            //http://msdn.microsoft.com/en-us/library/system.net.httpwebrequest.aspx - HttpWebRequest Class


            //http://forums.asp.net/t/1143715.aspx/1?using+C+to+post+XML+to+an+https+service+non+SOAP+
            //http://www.codeproject.com/KB/dotnet/XmlPost.aspx
            //http://www.fryan0911.com/2009/05/c-how-to-post-data-to-web-page-using.html
            //http://msdn.microsoft.com/en-us/library/debx8sh9.aspx
            //http://msdn.microsoft.com/en-us/library/5t9y35bd%28vs.71%29.aspx
            //http://msdn.microsoft.com/en-us/library/debx8sh9.aspx#Y2596
            //http://forums.asp.net/t/986867.aspx


            //http://www.netomatix.com/httppostdata.aspx - this one was the most helpful - succinct.
            
            Response.Write("lnkWizP3Finish_Click start <br/>");
            //Response.Redirect("http://www.zombo.com");
            try
            {
                //String Url = "http://www.doody.com/ws/dct/testinterface.asp";   This one doesn't work
                String Url = "http://www.doody.com/ws/dct/interface.asp";        //This one apparently does work.
               
                //'Create the requestBody from the methodName and paramArr
                //String AuthToken = "AuthToken={51C313B7-4C3F-4ECC-BB1F-16CEA240983B}&DCTOrderRequest=" & Server.URLEncode(cxmltosend)
                //String AuthToken = "AuthToken={51C313B7-4C3F-4ECC-BB1F-16CEA240983B}&DCTOrderRequest=";
                  //String AuthToken = "AuthToken={51C313B7-4C3F-4ECC-BB1F-16CEA240983B}";
                String AuthToken = "{51C313B7-4C3F-4ECC-BB1F-16CEA240983B}";
               
                //String xml = "<books><book><title>test</title></book></books>";
                String xml = GetXml();

                Debug.Print(xml);

                //Uri uri = new Uri(Url);

                //string strId = UserId_TextBox.Text;
	//string strName = Name_TextBox.Text;

	//ASCIIEncoding encoding=new ASCIIEncoding();
    UTF8Encoding encoding = new UTF8Encoding();
	string postData="AuthToken="+AuthToken;
	postData += ("&DCTOrderRequest="+xml);
	byte[]  data = encoding.GetBytes(postData);
                

                //HttpWebRequest req = (HttpWebRequest)WebRequest.Create(uri);

                WebRequest req = WebRequest.Create("http://www.doody.com/ws/dct/interface.asp");
                req.Method = "POST";
                req.ContentType = "application/x-www-form-urlencoded";
                req.ContentLength = data.Length;
                Stream dataStream = req.GetRequestStream();

                dataStream.Write(data,0,data.Length);

                dataStream.Close();



                //"C# using reference - for implicit garbage collection - implements IDisposable - shorthand/similar to implementing a try catch to make sure resources are not left 
                //http://msdn.microsoft.com/en-us/library/yh598w02.aspx
                using (WebResponse rsp = req.GetResponse() as HttpWebResponse)
                {
                    StreamReader reader = new StreamReader(rsp.GetResponseStream());
                    //Response.Write("<br/><br/>" + reader.ReadToEnd() + "<br/><br/>");

                    //this.Xml1.DocumentSource = reader.ReadToEnd();
                    this.Xml1.DocumentContent = reader.ReadToEnd(); 
                    this.Xml1.DataBind();




                    ////http://support.microsoft.com/kb/301228
                    ////This is one way, but not really optimal for what im trying to do....
                    //XmlTextReader xtr = new XmlTextReader(reader);

                    //while(xtr.Read())
                    //{


                    //    switch (xtr.NodeType)
                    //    {
                    //        case XmlNodeType.Element: // The node is an Element.
                    //            //if(xtr.Name=="Number" || xtr.Name=="Description")
                    //            //{
                    //                Response.Write(xtr.Name + "<br/>");
                    //            //}
                    //            //Response.Write(xtr.Value);
                    //            //while (xtr.MoveToNextAttribute()) // Read attributes.
                    //            //    Response.Write(" " + xtr.Name + "='" + xtr.Value + "'");
                    //            //Response.Write(">");
                    //            //Response.Write(">"););
                    //            break;
                    //        case XmlNodeType.Text: //Display the text in each element.
                    //            //if (xtr.Name == "Number" || xtr.Name == "Description")
                    //            //{
                    //                Response.Write("&nbsp;&nbsp;" + xtr.Value + "<br/>");
                    //            //}
                    //            break;
                    //        case XmlNodeType.EndElement: //Display end of element.
                    //            //Response.Write(xtr.Name);
                    //            ////Response.Write(">");
                    //            break;
                    //    }




                    //}


                }


                 





                //// Get response  
                //using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                //{
                //    // Get the response stream  
                //    StreamReader reader = new StreamReader(response.GetResponseStream());

                //    // Read the whole contents and return as a string  
                //    result = reader.ReadToEnd();
                //}











               // Debug.Print(xml);

                //Response.Write(rsp.ToString()+ "<br/>");

                //req.GetRequestStream().Close();
                //rsp.GetResponseStream().Close();
                //Stream ds = rsp.GetResponseStream();

           


                Response.Write("lnkWizP3Finish_Click finish");


                LinkButton lnkAllDone = new LinkButton();

                lnkAllDone.Text = "All Done";
                lnkAllDone.OnClientClick = "CloseLightbox();";
                //lnkAllDoneIDLiteral.Text = lnkAllDone.ClientID;
                //this.Controls.Add(lnkAllDone);

                this.Panel1.Controls.Add(lnkAllDone);
                this.LinkButton1.Visible = false;

            }
            catch (WebException webEx)
            {
                Debug.Print(webEx.Message.ToString());
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page_Load<br/>");

            //http://developer.yahoo.com/dotnet/howto-xml_cs.html
            //Uri myURI = new Uri("http://www.doody.com/ws/dct/interface.asp");
            //Response.Write(StringGet.GetPageAsString(myURI));

        }
    }



  



}
