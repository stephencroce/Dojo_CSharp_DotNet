<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<input id="hiddenW9required" type="hidden" name="hiddenW9required"  value="0" />
<script language="javascript" type="text/javascript">
    //passed from parent
    var oMyObject = window.dialogArguments;
    if (oMyObject != null) {
        var W9 = oMyObject.W9;
        document.cookie = "abcdefghijklmnopqrstuvwxyz=" + W9;
        //alert('a ' + W9);
        var xxx = parent.document.getElementById("hiddenW9required");
        //alert('b ' + xxx.value);

        if (W9 == 1) {
           // alert(document.ownerDocument.documentElement("hiddenW9required"));
        }
        else {
        }
    }
</script>


<style type="text/css">
 /* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Papyrus;
	panose-1:3 7 5 2 6 5 2 3 2 5;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
h1
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:4.4in;
	margin-bottom:.0001pt;
	text-indent:.2in;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
h2
	{margin:0in;
	margin-bottom:.0001pt;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
h3
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.4in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-indent:.2in;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
 /* Page Definitions */
 @page Section1
	{size:8.5in 11.0in;
	margin:.8in .8in .6in .8in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}

</style>


<div class="Section1">

<h1 style='margin-left:0in;text-indent:0in'><img width="576" height="90" src="<%=Me.Helper.LetterWizardURL + "/Images/CEI-GlobalVehicleRiskSolutions-2.jpg"%>" /></h1>

<h1><span style='font-size:11.0pt'>SUITE&nbsp;200</span></h1>
<h1><span style='font-size:11.0pt'>4850&nbsp;STREET&nbsp;ROAD</span></h1>
<h1><span style='font-size:11.0pt'>TREVOSE,&nbsp;PA&nbsp;&nbsp;19053</span></h1>
<p class="MsoNormal"><b><span style='font-size:11.0pt'>&nbsp;</span></b></p>
<h1><span style='font-size:14.0pt'><%=Now.ToString("MMMM dd, yyyy")%></span></h1>
<h1><span style='font-size:14.0pt'>Claim&nbsp;#&nbsp;<%=Me.Helper.ClaimNumber%></span></h1>


<p class="MsoNormal" style='margin-left:4.0in;text-indent:.5in'>&nbsp;</p>
<p class="MsoNormal" style='margin-left:4.0in;text-indent:.5in'>&nbsp;</p>

<!-- ONLY ONE of these will show based on W9 flag-->
<%  If Me.OutOfNetworkVendorShopName.ToUpper().Trim().EndsWith("W9") Then%>
    <h2 class="MsoNormal" id="h2W9on">FAX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PAGE&nbsp;1&nbsp;OF&nbsp;&nbsp;3</h2>
<%Else%>
    <h2 id="h2W9off">FAX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PAGE&nbsp;1&nbsp;OF&nbsp;&nbsp;2</h2>
<%End If%>

<p class="MsoNormal" align=center style='text-align:center'><b><span
style='font-size:14.0pt'>&nbsp;</span></b></p>

<p class="MsoNormal"><b><span style='font-size:14.0pt'>TO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=Me.OutOfNetworkVendorContactDisplayName%> / <%=Me.OutOfNetworkVendorShopName.Replace("W9", "").Replace("w9", "")%></span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>&nbsp;</span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>FAX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=Me.OutOfNetworkVendorShopFax%></span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>&nbsp;</span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>FROM:&nbsp;&nbsp;&nbsp;<%=IIf(Me.OrgCountryId = 2, "CEI Network Canada, Inc. Network Services", "The CEI Group, Inc. Network Services")%></span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;800-234-3300</span></b></p>

<p class="MsoNormal"><b><span style='font-size:14.0pt'>&nbsp;</span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>CEI FAX:&nbsp;&nbsp;<%=Me.Helper.CEIPrimaryFAXnumber%></span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>&nbsp;</span></b></p>


<!-- Only ONE of these will show based on W9 flag -->
<%  If Me.OutOfNetworkVendorShopName.ToUpper().Trim().EndsWith("W9") Then%>
    <p class="MsoNormal" id="paraW9on"><b><span style='font-size:14.0pt'>Per our discussion, please complete and fax the enclosed conditional purchase order, and W-9. </span></b></p>
<%Else%>
    <p class="MsoNormal" id="paraW9off"><b><span style='font-size:14.0pt'>Per our discussion, please complete and fax the enclosed conditional purchase order. </span></b></p>
<%End If%>
<!-- end W9 flag -->



<p class="MsoNormal" style='margin-left:.5in;text-indent:-.25in'><span
style='font-size:14.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><b><span style='font-size:14.0pt'>This will enable CEI to issue a repair authorization and process your payment.  </span></b></p>

<p class="MsoNormal" style='margin-left:.5in;text-indent:-.25in'><span
style='font-size:14.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><b><span style='font-size:14.0pt'>Please be sure to take photos of the vehicle before the repairs are started and email them to <ahref="mailto:fleetemail@ceinetwork.com">fleetemail@ceinetwork.com</a>. </span></b></p>

<p class="MsoNormal" style='margin-left:.5in;text-indent:-.25in'><span
style='font-size:14.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><b><span style='font-size:14.0pt'>Photos are required for payment. </span></b></p>

<p class="MsoNormal" style='margin-left:.5in;text-indent:-.25in'><span
style='font-size:14.0pt;font-family:Symbol'>·<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><b><span style='font-size:14.0pt'>Please send this information to CEI within 24 hours of receipt of this letter.</span></b></p>

<p class="MsoNormal"><b><span style='font-size:14.0pt'> </span></b></p>
<p class="MsoNormal"><b><span style='font-size:14.0pt'>Thank you,</span></b></p>
<p class="MsoNormal"><strong><span style='font-size:13.5pt;font-family:Papyrus'>Jay Myers</span></strong></p>
<p class="MsoNormal"><strong><span style='font-size:13.5pt;font-family:Papyrus'><%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group")%></span></strong></p>
<p class="MsoNormal"><strong><span style='font-size:13.5pt;font-family:Papyrus'>Network Services </span></strong></p>
<p class="MsoNormal"><span style='font-size:13.5pt;font-family:Papyrus'><a
href="mailto:jay.myers@ceinetwork.com" title="mailto:jay.myers@ceinetwork.com"><strong><span
style='font-family:Papyrus;color:windowtext;text-decoration:none'>jay.myers@ceinetwork.com</span></strong></a></span></p>
<p class="MsoNormal"><strong><span style='font-size:13.5pt;font-family:Papyrus'>phone – 800.234.3300  ex. 1757</span></strong></p>
<p class="MsoNormal"><strong><span style='font-size:13.5pt;font-family:Papyrus'>fax - <%=Me.Helper.CEIPrimaryFAXnumber%></span></strong></p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">&nbsp;</p>
</div>


<!--      PAGE TWO    --> 
<div style="page-break-before: always"> 
<p class="MsoNormal"><img border="0" width="576" height="78" src="<%=Me.Helper.LetterWizardURL + "/Images/CEI-GlobalVehicleRiskSolutions.jpg"%>" /></p>
<p class="MsoNormal">&nbsp;</p>
<h1 align="center" style='margin-left:0in;text-align:center;text-indent:0in'><u>CONDITIONAL PURCHASE ORDER</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=Now.ToString("MMMM dd, yyyy")%></h1> 
<p class="MsoNormal">&nbsp;</p>

<h2>                   <%=Me.OutOfNetworkVendorShopName.Replace("W9", "").Replace("w9", "")%>                                                               </h2>
<h2>                   <%=Me.OutOfNetworkVendorShopAddr1%></h2>

<%  If Me.OutOfNetworkVendorShopAddr2 <> "" Then%>
    <h2>                   <%=Me.OutOfNetworkVendorShopAddr2%></h2>
<% End If%>              
<%  If Me.OutOfNetworkVendorShopAddr3 <> "" Then%>
    <h2>                   <%=Me.OutOfNetworkVendorShopAddr3%></h2>
<% End If%>              
<h2>                   <%=Me.OutOfNetworkVendorShopCityStateZip%>                               </h2>
<h2>                   <b>Tel: </b><b><%=Me.OutOfNetworkVendorShopPhone%>   Fax: <%=Me.OutOfNetworkVendorShopFax%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CEI Claim: <%=Me.Helper.ClaimNumber%></b></h2>


<p class="MsoNormal">Thank you for your interest in rendering necessary repairservices on behalf of the following vehicle:  
<b>(<%=Me.Helper.VehicleYear%> <%=Me.Helper.VehicleMake%> <%=Me.Helper.VehicleModel%>, VIN:<%=Me.Helper.VehicleVin%>, 
Contact: <%=Me.Helper.ContactName%> with <%=Me.Helper.ClientName%>).</b> 

By signing this Conditional Purchase Order, Repair Vendor understands and agrees to the following terms and conditions:</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>The terms for any claim
     processed include payment in thirty (30) days after receipt of Repair
     Vendor’s final invoice.  <b><u>The final invoice should be faxed to 215-485-4659.</u></b></li> 
</ul>

<p class="MsoNormal" style='margin-left:.25in;text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>Repair Vendor will not initiate
     repair services or order necessary parts until such time when CEI - and
     CEI alone - issues approval in the form of a CEI Purchase Order Number. 
     No additional amounts will be due and owing unless specifically authorized
     in writing via a CEI Supplemental Purchase Order Number.<b>  No other parties
     – including, but not limited to, Independent Appraisers, Vehicle Drivers,
     Driver’s Manager/Supervisor, or the adverse Liability Insurance Carrier –
     have been authorized by CEI to approve repair services or to approve
     ordering of necessary parts.</b></li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>Repair Vendor agrees to
     guarantee all services rendered, to satisfy all valid customer complaints,
     store vehicle safely at no charge, and to resolve any/all defective parts
     issues in accordance with manufacturer specifications.</li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>Repair Vendor shall indemnify
     and hold harmless CEI including reasonable counsel fees and costs for all
     claims, losses and damages to the vehicle as a result of Repair Vendor’s
     negligence or failure to repair the vehicle in a good and workmanlike
     manner, or in accordance with industry standards or damages to the vehicle
     while in the Repair Vendor’s possession.”</li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>Repair Vendor agrees that its’
     Estimate and Final Invoice reflects actual repair services rendered and
     that the repair services are consistent with professional industry
     standards necessary and appropriate to restore vehicle to a safe, pre-loss
     condition; and that repair work will not result in diminishing the
     vehicle’s value.</li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>This Conditional Purchase Order
     shall be binding on the parties hereto together with their executors, administrators,
     successors, and assigns.</li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>

<ul style='margin-top:0in' type=disc>
 <li class="MsoNormal" style='text-align:justify'>
      <b><u>Please fax your estimate to</u> <u><%=Me.Helper.CEIPrimaryFAXnumber%></u></b>. 
      <b><u>Email photos</u></b> to <a href="mailto:fleetemail@ceinetwork.com">fleetemail@ceinetwork.com</a>.
 </li>
</ul>

<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>


<%  If Me.IsOutOfNetworkVendorCanadianLetter Then%>
    <p class="MsoNormal" style='text-align:justify'><b><u>Accepted By</u>:                                                                                  Shop
    GST#:______________</b></p>
<%Else%>
    <p class="MsoNormal" style='text-align:justify'><b><u>Accepted By</u>:                                    </p>
<% End If%>   


<p class="MsoNormal" style='text-align:justify'>&nbsp;</p>
<p class="MsoNormal" style='text-align:justify'>_______________________________________________                         _________________</p>
<p class="MsoNormal" style='text-align:justify'>Repair Facility Authorized Representative                                                   Date</p>
</div>



<!--      PAGE THREE optional if W9 selected    --> 
<%  If Me.OutOfNetworkVendorShopName.ToUpper().Trim().EndsWith("W9") Then%>
<div id="divW9" > 
    <div style="page-break-before: always" >
        <p class="MsoNormal" style='text-align:justify'><img border="0" width="576" height="836" src="<%=Me.Helper.LetterWizardURL + "/Images/W9.jpg"%>" /></p>
    </div>
</div>
<%End If%>



<script language="javascript" type="text/javascript">

    function GetCookie(NameOfCookie) {
        if (document.cookie.length > 0) {
            begin = document.cookie.indexOf(NameOfCookie + "=");
            if (begin != -1) {
                begin += NameOfCookie.length + 1;
                end = document.cookie.indexOf(";", begin);
                if (end == -1) end = document.cookie.length;
                return unescape(document.cookie.substring(begin, end));
            }
        }
        return null;
    }
    
    var w9Div = document.getElementById('divW9');
    var h2on = document.getElementById('h2W9on');
    var h2off = document.getElementById('h2W9off');
    var paraon = document.getElementById('paraW9on');
    var paraoff = document.getElementById('paraW9off');
    var cookieW9required = GetCookie('abcdefghijklmnopqrstuvwxyz');
    ///alert(cookieW9required);


//    if (cookieW9required == 1) {
//        if (w9Div != null) {
//            w9Div.disabled = false;
//            w9Div.style.display = '';
//        }
//        if (h2off != null) {
//            h2off.disabled = true;
//            h2off.style.display = 'none';
//        }
//        if (paraoff != null) {
//            paraoff.disabled = true;
//            paraoff.style.display = 'none';
//        }
//    }
//    else {
//        if (w9Div != null) {
//            w9Div.disabled = true;
//            w9Div.style.display = 'none';
//        }
//        if (h2on != null) {
//            h2on.disabled = true;
//            h2on.style.display = 'none';
//        }
//        if (paraon != null) {
//            paraon.disabled = true;
//            paraon.style.display = 'none';
//        }
//    }

 
</script>