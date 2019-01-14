<%@ Control Language="C#" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<style type="text/css">
  ul.SpecialInstructions li {
    margin-top:10px;
  }
  .SquareTextBox {
    height:25px;
  }
  .Square {
    margin-right:3px;
  }
</style>

<!--// Page 1 //-->
<table border="0" cellpadding="0" cellspacing="0" class="<%=this.PageSizeCss%>">
  <tr>
    <td style="height:auto; vertical-align:top;">
      <!--// Header Information //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td class="TextSmallNormal" style="vertical-align:top; width:50%; text-align:left;">
              <%=this.GetProperCEIName(this.OrgCountryId, "The CEI Group, Inc.") %><br />
              4850 Street Road, Suite 200<br />
              Trevose, PA 19053
            </td>
            <td class="TextSmallNormal" style="vertical-align:top; width:50%; text-align:right;">
              Phone: 1-800-234-3300<br />
              Fax: 1-215-485-4650<br />
              Photos: fleetemail@ceinetwork.com
            </td>
          </tr>
        </table>       
      </div>
      
      <!--// Logo //-->
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
          <tr>
            <td style="width:142px; text-align:left;">&nbsp;</td>
            <td class="TextTitle" style="width:auto; text-decoration:underline; text-align:center;">Central Parking Systems<br />Special Instructions</td>
            <td style="width:142px; text-align:right; vertical-align:top;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" alt="logo"/></td>
          </tr>
        </table>
      </div>
      
      <!--// Text Header //-->
      <div class="TextLargeNormal">
        <ul class="SpecialInstructions">
          <li>This vehicle is owned by the driver.  It is <u>not a fleet vehicle</u></li>
          <li><b>CEI is managing the repair and will be paying the claim on behalf of Central Parking</b></li>
          <li><b>Central Parking is CEI's customer</b></li>
          <li>All question related to the claim should be directed to CEI at 1-800-234-3300</li>
          <li>OEM Parts are to be used unless directed otherwise by CEI</li>
          <li>Repair all panels where possible up to limits of economic practicality and safety</li>
          <li>No used or aftermarket parts should be utilized</li>
          <li>Any unrelated or obvious previous damage should be written as a seperate estimate and reported to CEI.  Do not include unrelated or previous damage in the estimate for the reported damage.</li>
          <li>Any disputes with the driver/customer should be reported to CEI</li>
          <li>Please have the attached Direction of Payment (DOP) signed at the time of the estimate in order to ensure direct payment. Fax document to: <span style="white-space:nowrap;">215-485-4650</span></li>
          <li>Payment will be processed after repair completion and receipt of completed Certification of Satisfaction / Release (at lower section of Repair Authorization, DOP &amp; Release document).</li>
        </ul>
      </div>
    </td>
  </tr>
  <tr>
    <td>
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2010, <%=this.GetProperCEIName(this.OrgCountryId, "The CEI Group, Inc.") %> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">templates/en/us/centralparking/shopestassignment</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 3</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!--// Page 2 //-->
<table border="0" cellpadding="0" cellspacing="0" class="<%=this.PageSizeCss%>">
  <tr>
    <td style="height:auto; vertical-align:top;">
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td class="TextSmallNormal" style="vertical-align:top; width:50%; text-align:left;">
              <%=this.GetProperCEIName(this.OrgCountryId, "The CEI Group, Inc.") %><br />
              4850 Street Road, Suite 200<br />
              Trevose, PA 19053
            </td>
            <td class="TextSmallNormal" style="vertical-align:top; width:50%; text-align:right;">
              Phone: 1-800-234-3300<br />
              Fax: 1-215-485-4650<br />
              Photos: fleetemail@ceinetwork.com
            </td>
          </tr>
        </table>       
      </div>
      
      <!--// Logo //-->
      <div style="margin-top:20px; text-align:right;">
        <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" alt="logo"/>
      </div>
      

      <!--// Text Header //-->
      <div style="margin-top:20px; text-align:center; text-decoration:underline" class="TextTitle">Central Parking Systems Claim Assignment</div>
      <div style="margin-top:10px;" class="TextNormal">
        This is a confirmation that CEI has assigned one of our customers to receive an estimate only at <b><%=this.VendorName%></b>; this is not a repair authorization.  The information on the Claim is as follows:
      </div>
      
      <!--// Client/Customer Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align:top;">Client Information</td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Client:</td>
                  <td class="TextNormal CellValue"><%=this.ClientName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Location:</td>
                  <td class="TextNormal CellValue"><%=this.ClientBranch%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Claim #:</td>
                  <td class="TextNormal CellValue"><%=this.ClaimId%></td>
                </tr>
              </table>
            </td>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align:top;">Customer Information</td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Name:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Address:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerAddress%></td>
                </tr>
                <% if (this.CustomerHPhone.Length > 0) {%>
                <tr>
                  <td class="TextNormal CellLabel">Home Phone #:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerHPhone%></td>
                </tr>
                <%} if (this.CustomerHMPhone.Length>0) {%>
                <tr>
                  <td class="TextNormal CellLabel">Mobile Phone #:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerHMPhone%></td>
                </tr>
                <%} if (this.CustomerWPhone.Length > 0) {%>
                <tr>
                  <td class="TextNormal CellLabel">Work Phone #:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerWPhone%></td>
                </tr>
                <%} if (this.CustomerWMPhone.Length > 0) {%>
                <tr>
                  <td class="TextNormal CellLabel">Work Mobile Phone #:</td>
                  <td class="TextNormal CellValue"><%=this.CustomerWMPhone%></td>
                </tr>
                <%}%>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Vehicle Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextLargeNormal CellTitle" colspan="2"><b>Vehicle Information</b> (please verify all information at time of inspection.)</td>
          </tr>
          <tr>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextNormal CellLabel">Year:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleYear%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Make:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleMake%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Model:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleModel%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Style:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleStyle%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Color:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleColor%></td>
                </tr>
              </table>
            </td>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextNormal CellLabel">VIN:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleVin%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Plate:</td>
                  <td class="TextNormal CellValue"><%=this.VehiclePlate%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Mileage:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleMileage%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Deductible:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleDeductible%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Unit #:</td>
                  <td class="TextNormal CellValue"><%=this.VehicleUnitNumber%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Damage Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextLargeNormal CellTitle" colspan="2"><b>Damage Information</b></td>
          </tr>
          <tr>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextNormal CellLabel">Primary Damage:</td>
                  <td class="TextNormal CellValue"><%=this.DamagePrimary%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Additional Damage:</td>
                  <td class="TextNormal CellValue"><%=this.DamageAdditional%></td>
                </tr>
              </table>
            </td>
            <td style="vertical-align:top;width:50%;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                  <td class="TextNormal CellLabel">Location:</td>
                  <td class="TextNormal CellValue"><%=this.DamageLocation%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Damage Area:</td>
                  <td class="TextNormal CellValue"><%=this.DamageDamageArea%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>

      <!--// Important Information //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextLargeNormal CellTitle"><b>Important Instructions</b> (in order to expedite repair approval/payment.)</td>
          </tr>
          <tr>
            <td class="TextNormal">
              <ol>
                <li>If you are unable to handle this assignment, please call CEI at <span style="white-space:nowrap;">1-800-234-3300</span> immediately.</li>
                <li>If there are any problems with towing, please contact CEI at <span style="white-space:nowrap;">1-800-234-3300</span>.</li>
                <li>CEI Must be contacted with the estimate within 12 hours from the time the Customer or vehicle arrives at the shop.</li>
                <li>Please send documents and estimates (with completed cover sheet) to the Portal (if applicable) or fax to CEI at <span style="white-space:nowrap;">1-215-485-4650</span></li>
                <li>Take clear photos of all damage and vehicle plate. submit to the Portal (if applicable) or E-mail to: <span style="white-space:nowrap;">fleetemail@ceinetwork.com</span>.</li>
                <li>This is not a repair approval. Authorizations and Purchase Orders will originate from CEI only.</li>
                <li>Upon inspection of a drivable vehicle, if you feel vehicle is unsafe, please contact CEI immediately.</li>
                <li>Please have the attached Direction of Payment (DOP) signed at the time of the estimate in order to ensure direct payment. Fax document to: <span style="white-space:nowrap;">215-485-4650</span></li>
                <li>Payment will be processed after repair completion and receipt of completed Certification of Satisfaction / Release (at lower section of Repair Authorization, DOP &amp; Release document).</li>
              </ol>
            </td>          
          </tr>
        </table>
      </div>
      
      <!--// Decals / Paintless Dent Removal (PDR) Information //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextLargeNormal CellTitle"><b>Decals / Paintless Dent Removal (PDR)</b></td>
          </tr>
          <tr>
            <td class="TextNormal">
              <ol>
                <li>When decals require replacement, submit R+I time, indicate which panel, specific wording, color of decals, and confirm all information is on cover sheet.</li>
                <li>PDR - PDR can be utilized whenever this process represents the most efficient and cost effective method.</li>
              </ol>
              The Customer has agreed to come in for an estimate on or by <b><%=this.VendorAppointmentDate%></b>.
              If the Customer does not come in by this date please call CEI at <span style="white-space:nowrap;">1-800-234-3300</span>, so that we may inform our client.
            </td>          
          </tr>
        </table>
      </div>

      <!--// Additional Comments //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" style="font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000">Comments:</td>
          </tr>
          <tr>
            <td valign="top" style="font:normal 10pt Sans-Serif;padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>   
    </td>
  </tr>
  <tr>
    <td>
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2010, <%=this.GetProperCEIName(this.OrgCountryId, "The CEI Group, Inc.") %> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">templates/en/us/centralparking/shopestassignment</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 2 of 3</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!--// Page 3 //-->
<table border="0" cellpadding="0" cellspacing="0" class="<%=this.PageSizeCss%>">
  <tr>
    <td style="height:auto; vertical-align:top;">

      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td align="center" class="TextXLargeBold"><u>Shop Estimate</u></td>
          </tr>
          <tr>
            <td align="center" class="TextXLargeBold">Central Parking Services Cover Sheet (must accompany estimate)</td>
          </tr>   
          <tr>
            <td align="right" class="TextXLargeBold"><%=this.ClientFinancialId%></td>
          </tr>  
        </table>
      </div>
    
    <!--// Estimate Contact Information //-->
    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="200px" class="TextBold">Claim #:</td>
          <td><div class="TextBold SquareTextBox" style="width:200px;"><%=this.ClaimId%></div></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px" style="padding-top:10px;">Client:</td>
          <td class="TextNormal" style="padding-top:10px;"><%=this.ClientName%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Location:</td>
          <td class="TextNormal"><%=this.ClientBranch%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Shop Name:</td>
          <td class="TextNormal"><%=this.VendorName%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px" valign="top">From:</td>
          <td class="TextNormal"><%=this.VendorAddress%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Phone:</td>
          <td class="TextNormal"><%=this.VendorPhone%></td>
        </tr>
      </table>
    </div>
    
    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextBold"><u>Please complete the Q&amp;A below and sumbit to the Portal or fax to <span style="white-space:nowrap;">1-215-485-4650</span> with a copy of the estimate.</u></td>
        </tr>
      </table>
    </div>

    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextNormal" width="200px">Estimator Name:</td>
          <td style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Date Estimated:</td>
          <td style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>/
              <span class="Square"></span>
              <span class="Square"></span>/
              <span class="Square"></span>
              <span class="Square"></span>(mm/dd/yy)
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Estimate Amount:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">$
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>.
              <span class="Square"></span>
              <span class="Square"></span>(including all tow/payout charges)
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Frame Hours:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Days to Repair:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
           <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Opens?:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
           <div class="TextXLargeNormal">
              <span class="Square"></span>Yes
              <span class="Square"></span>No
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Open Amount:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">$
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>.
              <span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Open Items:</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Vehicle in Shop?:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
           <div class="TextXLargeNormal">
              <span class="Square"></span>Yes
              <span class="Square"></span>No
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Why?:</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Date in Shop:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>/
              <span class="Square"></span>
              <span class="Square"></span>/
              <span class="Square"></span>
              <span class="Square"></span>(mm/dd/yy)
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Odometer Reading:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Plate Verification:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">VIN Verification:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <div class="TextXLargeNormal">
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span><span class="Square"></span>
              <span class="Square"></span>
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Additional Comments:</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Decals Replacement Required?: (Company Logo)</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
           <div class="TextXLargeNormal">
              <span class="Square"></span>Yes
              <span class="Square"></span>No
            </div>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If yes, Panels Involved:</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Specific wording and color:</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">of all decals (name + numbers)</td>
          <td class="TextNormal" style="padding-top:5px;"><div class="SquareTextBox" /></td>
        </tr>
      </table>
    </div>




    </td>
  </tr>
  <tr>
    <td>
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2010, <%=this.GetProperCEIName(this.OrgCountryId, "The CEI Group, Inc.") %> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">templates/en/us/centralparking/shopestassignment</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 3 of 3</td>
        </tr>
      </table>
    </td>
  </tr>
</table>


<script runat="server">
  public override string NTAccount {
    get {
      return "";
    }
  }
  
  public override string Subject {
    get {
      return "Central Parking Systems Claim Assignment - Claim Id: {0}";
    }
  }

  private string FormatPhone(string Phone) {
    switch (Phone.Length) {
      case 11:
        return string.Format("{0} ({1}) {2}-{3}", Phone.Substring(0, 1), Phone.Substring(1, 3), Phone.Substring(4, 3), Phone.Substring(7));
      case 10:
        return string.Format("({0}) {1}-{2}", Phone.Substring(0, 3), Phone.Substring(3, 3), Phone.Substring(6));
      case 7:
        return string.Format("{0}-{1}", Phone.Substring(0, 3), Phone.Substring(3));
    }
    return Phone;
  }

  private CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee ClaimEmployee {
    get {
      if (Session["ClaimEmployee"] is Nullable) {
        Session["ClaimEmployee"] = new CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee(this.Helper.Claim);
      }
      return (CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee)Session["ClaimEmployee"];
    }
  }

  //private CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimVehicle ClaimVehicle {
  //  get {
  //    if (Session["ClaimVehicle"] is Nullable) {
  //      Session["ClaimVehicle"] = new CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimVehicle(this.Helper.Claim);
  //    }
  //    return (CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimVehicle)Session["ClaimVehicle"];
  //  }
  //}

  //private CEI.Application.Intelliclaim.UserService.BusinessObject.VehicleStyle ClaimVehicleStyle {
  //  get {
  //    if (Session["VehicleStyle"] is Nullable) {
  //      Session["VehicleStyle"] = new CEI.Application.Intelliclaim.UserService.BusinessObject.VehicleStyle(this.ClaimVehicle.VehicleStyleID);
  //    }
  //    return (CEI.Application.Intelliclaim.UserService.BusinessObject.VehicleStyle)Session["VehicleStyle"];
  //  }
  //}
  

  private string ClientName { get { try { return this.Helper.Client.DisplayName; } catch { return string.Empty; } } }
  private string ClientBranch { get { try { return this.Helper.Claim.OrgUnit.DisplayName; } catch { return string.Empty; } } }
  private string ClientFinancialId { get { try { return this.Helper.Claim.ClaimID.ToString() + this.Helper.Vendor.FinancialID; } catch { return string.Empty; } } }
  
  private string ClaimId { get { try{return this.Helper.Claim.ClaimID.ToString();}catch{return string.Empty;} } }
  private string CustomerName { get { try {return this.Helper.ContactName; } catch { return string.Empty; } } }
  private string CustomerAddress { get { try { return this.Helper.ContactAddress; } catch { return string.Empty; } } }
  private string CustomerHPhone { get { try {return this.Helper.ContactHomePhone; } catch { return string.Empty; } } }
  private string CustomerHMPhone { get { try { return this.Helper.ContactMobileHomePhone ; } catch { return string.Empty; } } }
  private string CustomerWPhone { get { try { return this.Helper.ContactWorkPhone; } catch { return string.Empty; } } }
  private string CustomerWMPhone { get { try { return this.Helper.ContactMobileWorkPhone; } catch { return string.Empty; } } }

  private string VehicleYear { get { try{return this.Helper.VehicleYear;  }catch{return string.Empty;} } }
  private string VehicleMake { get { try{return this.Helper.VehicleMake;}catch{return string.Empty;} } }
  private string VehicleModel { get { try{return this.Helper.VehicleModel; }catch{return string.Empty;} } }
  private string VehicleStyle { get {try{return this.Helper.VehicleStyle;}catch{return string.Empty;}}}
  
  private string VehicleColor { get {try{return this.Helper.VehicleColor;}catch{return string.Empty;}}}
  
  private string VehicleVIN { get { try{return this.Helper.VehicleVin ; }catch{return string.Empty;} } }
  private string VehiclePlate { get { try{return this.Helper.VehiclePlate ;}catch{return string.Empty;} } }
  private string VehicleMileage { get { try{return this.Helper.VehicleMileage;}catch{return string.Empty;} } }
  private string VehicleDeductible { get { try{return this.Helper.VehicleDeductible; }catch{return string.Empty;} } }

  private string DamagePrimary {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.PrimaryDamageAreaID);
        return DA.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageAdditional {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.AdditionalDamageAreaID);
        return DA.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageLocation {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.AccidentLocation AL = new AccidentLocation(this.Helper.Claim.AccidentDescription.AccidentLocationID);
        return AL.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageDamageArea { get { try{  return this.Helper.Claim.AccidentDescription.DamageArea;   }catch{return string.Empty;} } }

  private string VendorAppointmentDate { get { try { return this.Helper.ShopEstimateAssignment.Assignment_DT.DisplayDate; } catch { return string.Empty; } } }
  
  private string VendorName { get { try{return this.Helper.Vendor.DisplayName; }catch{return string.Empty;} } }
  private string VendorAddress { get { try{return this.Helper.Vendor.Details.Address.TransformAddress(ContactComponetUtilities.FormatOptions.HTML); }catch{return string.Empty;} } }
  private string VendorPhone { get { try{    return this.FormatPhone(this.Helper.Vendor.Details.Phone2);}catch{return string.Empty;} } }
</script>