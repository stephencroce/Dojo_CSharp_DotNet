<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<link href="~/Web/Scripts/Style.asp" rel="Stylesheet" type="text/css" runat="server" visible="false" />
<!--// COVER PAGE //-->
<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: always;" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <!--// COVER PAGE //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><br/>
              4850 Street Road, Suite 200<br/>
              Trevose, PA 19053
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Phone: 1-800-234-3300<br/>
              Fax: 1-215-485-4650<br/>
              Photos: fleetemail@ceinetwork.com
            </td>
          </tr>
        </table>
      </div>

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td align="right" style="padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" alt=""/></td>
          </tr>
        </table>
      </div>
      
      <!--// CONTENT //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextNormal" align="left" style="padding-top:5px;">
              <div class="TextBold" align="center" style="width:100%;"><b><u>Attention:</u> This claim is part of CEI's<br/><u>Service Fleet Estimating Program</u></b></div>
              <b><u>CEI Client:</u> <%=Me.ClientName%> : <%=Me.BranchName%></b><br/>
              Please be advised that CEI manages accidents for many types of customers.
              <ul>
                <li>Our ability to recognize and service their individual needs is imperative.</li>
                <li>Service fleets have different guidelines based on their usage and must be estimated accordingly.</li>
                <li><u><b>Always</b></u> write a complete estimate and take photos of all the incident related damage. Our client will determine what they want to have repaired</li>
                <li>Write any unrelated damage on a separate estimate and take separate photos. Our client will determine what if any of that damage will be repaired.</li>
                <li>Please follow the standard CEI procedures with the following exceptions noted below</li>
              </ul>
              <br/>
              <ul>
                <li>No repair/replacement of parts/panels, etc with minor or surface damage.</li>
                <li>Repair all body panels up to limits of economic practicality i.e. cost of repair labor and paint should not exceed a judicious percentage of total hours of panel replacement.</li>
                <li>When replacing panels / parts, primary consideration should be given to LKQ and/or CAPA-certified parts when available. However, suspension, steering, restraint, airbag, or any other safety-related parts should be replaced with OEM only.</li>
                <li>Paint should be done as most economically practicable as possible, i.e. spot paint w/blend on same panel, no blend on adjacent panels - 'paint'</li>
                <li>All underbody / undercarriage wherein no, or minimal body panel damages are reported are to be referred to GEFS Maintenance Call Center, see GEFS definition of 'an Accident'</li>
                <li>All glass repairs or replacements should be referred to GEFS Maintenance Call Center</li>
              </ul>
            </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=FileDetails()%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 4</td>
        </tr>
      </table>
    </td>
  </tr>
</table>


<!--// PAGE 1 //-->
<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: always;" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <!--// Header Section //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><br/>
              4850 Street Road, Suite 200<br/>
              Trevose, PA 19053
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Phone: 1-800-234-3300<br/>
              Fax: 1-215-485-4650<br/>
              Photos: fleetemail@ceinetwork.com
            </td>
          </tr>
        </table>
      </div>

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td align="right" style="padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" alt=""/></td>
          </tr>
        </table>
      </div>

      <!--// TITLE Section //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td align="center" class="TextXLargeBold"><u>Claim Assignment</u></td>
          </tr>
        </table>
      </div>

      <!--// Content //-->
      <div style="margin-top:5px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextNormal">This is a confirmation that CEI has assigned one of our drivers to receive an estimate only at <nobr><b><%=Me.ShopName%></b>;</nobr> this is not a repair authorization. The information on the claim is as follows:</td>
          </tr>
        </table>
      </div>

      <!--// Employee / Contact Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td valign="top" width="50%">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                  <td valign="top" class="TextLargeBold CellTitle" colspan="2">Customer Information</td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Customer:</td>
                  <td class="TextNormal CellValue"><%=Me.ClientName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Branch:</td>
                  <td class="TextNormal CellValue"><%=Me.BranchName%></td>
                </tr>
                <tr>
                  <td class="TextBold CellLabel">Claim #:</td>
                  <td class="TextBold CellValue"><%=Me.ClaimNumber%></td>
                </tr>
              </table>
            </td>
            <td valign="top" width="50%">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                  <td class="TextLargeBold CellTitle" colspan="2"><%=iif(Me.IsEmployee,"Employee","Contact")%> Information</td>
                </tr>
                <TR style="display:<%=iif(Me.IsEmployee,"Hidden","Visible")%>">
                  <td class="TextNormal CellLabel">Relationship:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactRelationship%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Name:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Address:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactAddress%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Home Phone #:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactHomePhone%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Mobile Home Phone #:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactMobileHomePhone%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Work Phone #:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactWorkPhone%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Mobile Work Phone #:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactMobileWorkPhone%></td>
                </tr>
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
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                  <td class="TextNormal CellLabel">Year:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleYear%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Make:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleMake%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Model:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleModel%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Style:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleStyle%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Color:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleColor%></td>
                </tr>
              </table>
            </td>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                  <td class="TextNormal CellLabel">Vin:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleVin%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Plate:</td>
                  <td class="TextNormal CellValue"><%=Me.VehiclePlate%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Mileage:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleMileage%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Deductible:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleDeductible%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Deductible:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleUnitNumber%></td>
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
            <td class="TextLargeBold CellTitle">Damage Information</td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                  <td class="TextNormal CellLabel">Service Description:</td>
                  <td class="TextNormal CellValue"><%=Me.DamageDescription%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Damage Area:</td>
                  <td class="TextNormal CellValue"><%=Me.DamageArea%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Additional Damage:</td>
                  <td class="TextNormal CellValue"><%=Me.AdditionalDamage%></td>
                </tr>                
                <%if Me.TowLocation.length > 0 then%>
                <tr>
                  <td class="TextNormal CellLabel">Tow Location:</td>
                  <td class="TextNormal CellValue"><%=Me.TowLocation%></td>
                </tr>
                <%end if%>
              </table>
            </td>
          </tr>
        </table>
      </div>

      <!--// Important Instructions //-->
      <div style="padding-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td class="TextNormal">
              <b>Estimate Procedures:</b>
              <ol>
                <li>If you are unable to handle this assignment, please call CEI at <b>800-234-3300</b> immediately.</li>
                <li>Be sure to follow any special instructions that accompany this assignment when writing the estimate.</li>
                <li>CEI must be contacted with the estimate within 12 hours from the time the Driver or vehicle arrives at the shop.</li>
                <li>When estimate complete, please fax along with completed cover sheet and estimate to CEI at <b>215-485-4650</b>.</li>
                <li>Take clear photos of all damage and vehicle plate.  E-mail to: <b>fleetemail@ceinetwork.com</b>.</li>
                <li>This is not a repair approval.  Authorizations will originate from CEI only.</li>
                <li>Upon inspection of a driveable vehicle, if you feel vehicle is unsafe, please contact CEI immediately.</li>
                <li>When sending documents, use postal mail only when necessary.</li>
              </ol>

              <%IF Me.TowLocation.Length > 0 THEN%>
                The Driver has agreed to come in for an estimate on or by <b><i><%=Me.AppointmentDate%></i></b>.  If the Driver does not come in by this date, please call CEI at <b>800-234-3300</b> so that we may inform our customer.
              <%END IF%>
              If there are any problems with towing, please contact CEI.
            </td>
          </tr>
        </table>
      </div>


      <!--// Additional Comments //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
          <tr>
            <td valign="top" class="TextLargeBold" style="border-bottom:solid 1px #000000">Comments:</td>
          </tr>
          <tr>
            <td valign="top" class="TextNormal" style="padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>  
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, The CEI Group, Inc. Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=FileDetails()%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 2 of 4</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!--// PAGE 2 //-->
<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: always;" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
    <!--// Title //-->
    <div>
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td align="center" class=" TextTitle"><u>Shop Estimate</u></td>
        </tr>
        <tr>
          <td align="center" class="TextLargeNormal">Fleet Services Cover Sheet (must accompany estimate)</td>
        </tr>   
      </table>
    </div>
    
    <!--// Estimate Contact Information //-->
    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="200px" class="TextBold">Claim ID:</td>
          <td width="200px" class="TextBold SquareTextBox"><%=Me.ClaimNumber%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px" style="padding-top:10px;">Customer:</td>
          <td class="TextNormal" width="200px" style="padding-top:10px;"><%=Me.ClientName%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Branch:</td>
          <td class="TextNormal" width="200px"><%=Me.BranchName%></td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px" valign="top">From:</td>
          <td class="TextNormal" width="200px"><%IF Me.ShopName.Length > 0 THEN%><%=Me.ShopName%><br><%END IF%><%=Me.ShopAddress%><br><%=Me.ShopPhoneNumber%></td>
        </tr>
      </table>
    </div>
    
    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td style="font:bold 10pt Sans-Serif;"><u>Please complete the Q&A below and fax to <nobr><b>1-215-485-4650</b></nobr> with a copy of the estimate</u></td>
        </tr>
      </table>
    </div>

    <div style="margin-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextNormal" width="200px">Estimate written per customer guidelines?:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareContent">Yes</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">No</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Estimator Name:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Date Estimated:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">/</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">/</td>                
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">(mm/dd/yy)</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Estimate Amount:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td style="font:normal 14pt Sans-Serif; padding-right:5px;">$</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">.</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">(including all tow/payout charges)</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Frame Hours:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Days to Repair:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Opens?:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareContent">Yes</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">No</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Open Amount:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td style="font:normal 14pt Sans-Serif; padding-right:5px;">$</td>              
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">.</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Open Items:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Vehicle in Shop?:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareContent">Yes</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">No</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Why?:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If Yes, Date in Shop:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">/</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">/</td>                
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">(mm/dd/yy)</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Odometer Reading:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Plate Verification:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">VIN Verification:</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>                
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td><td class="SquareSpacer">&nbsp;</td>
                <td class="Square">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Additional Comments:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Decals Replacement Required?: (Company Logo)</td>
          <td class="TextXLargeNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="Square">&nbsp;</td><td class="SquareContent">Yes</td>
                <td class="Square">&nbsp;</td><td class="SquareContent">No</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">If yes, Panels Involved:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">&nbsp;</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">Specific wording and color:</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
        <tr>
          <td class="TextNormal" width="200px">of all decals (name + numbers)</td>
          <td class="TextNormal" style="padding-top:5px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
          </td>
        </tr>
      </table>
    </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=FileDetails()%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 3 of 4</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: never;" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <!--// COVER PAGE //-->
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
            <td valign="top" align="center"><font size="-3"><b>CEI Auto Claims Management<br/><i><u>Fleet Repair Facility Procedures and Guidelines</u></i></b></font></td>
        </tr>
        <tr>
            <td style="padding-right:80px;">
              <font size="-3">
                <ul>
                    <li><b>A. ESTIMATES</b></li>
                    <ul>
                        <li style="text-align: justify">Call CEI within 24 hours with estimate amount and breakdown. <b>On Towed-In Vehicles, call CEI immediately to inform vehicle has arrived.</b> This saves rental costs and vehicle downtime.</li>
                        <li style="text-align: justify"><b>Include the following information on your estimate:</b> Driver/Contact name, telephone number, company, <b>CEI claim number, mileage, plate, and VIN number.</b> Please provide an accurate estimate of repair days required. Do not allow drivers to leave drivable vehicles at the shop unless authorized by CEI.</li>
                        <li style="text-align: justify">When writing an estimate for CEI, write all visible damage and leave open any questionable items. <b>Include a maximum dollar amount that the open items could reach. Write unrelated damage separate and advise CEI. Please include tow and payout charges separately.</b></li>
                        <li style="text-align: justify">Take clear photos of the damaged area(s). Fax estimate to <b>1-215-485-4650</b> and email photos to <b>fleetemail@ceinetwork.com</b> the same day. <b><i>Do not compress or combine multiple images into 'ZIP' files.</i></b> (Payment cannot be issued without photographs!) <b>Driver does not get copy of the estimate. If you do not have the ability to email, you may mail photos.</b></li>
                        <li style="text-align: justify"><b>Rentals.</b> Do not put drivers in a rental without authorization from CEI. Our Clients have specific parameters regarding rental vehicle sizes and insurance coverage parameters.</li>
                        <li style="text-align: justify"><b>Appraisers.</b> If Client requires an independent appraiser, shop must obtain Agreed Price. It is the Repair Facility’s responsibility to review the estimate before agreeing to it.</li>
                        <li style="text-align: justify"><b>Glass.</b> If glass requires replacement, please ensure that you are providing a minimum of 40% discount off of the NAGS list price. OEM glass must be utilized.</li>
                        <li style="text-align: justify"><b>Suspension.</b> Do not use used or aftermarket suspension parts.</li>
                        <li style="text-align: justify"><b>Decals / PDR.</b> Refer to instructions on page 1.</li>
                    </ul>
                    <li><b>B. TEARDOWNS</b></li>
                    <ul>
                        <li style="text-align: justify">CEI will issue a teardown prior to Purchase Order on many open estimates. <U><b>This does not represent approval for repairs!</b></U> A teardown is sometimes necessary in order to determine any hidden damage. Our clients are more understanding of supplements that occur during the teardown process than after they have committed to the repairs.</li>
                        <li style="text-align: justify">Once teardown is completed, call CEI with results. If there is no hidden damage a Purchase Order will be given immediately. If additional damage is found, fleet approval must be obtained before actual repair is started. Once the Purchase Order is given after teardown, supplements will not be allowed on obvious items that should have been discovered during the teardown process.</li>
                    </ul>
                    <li><b>C. PURCHASE ORDERS</b></li>
                    <ul>
                        <li style="text-align: justify"><b>Repairs are not to be started without an authentic <U>repair</U> Purchase Order from CEI.</b> Do not accept approval from the driver, manager, or independent appraiser under any condition.</li>
                        <li style="text-align: justify">Please advise CEI when a repair appointment is made and when a vehicle is left a shop.</li>
                        <li style="text-align: justify">Notify CEI of any significant delays (i.e., back-ordered parts, labor issues, or driver no-shows.)</li>
                        <li style="text-align: justify">Once vehicle is in for repairs and a <b>supplement is required</b>, stop the repair process. Call CEI with the supplement figure and fax paperwork to CEI. <b>Do not wait for the Appraiser to notify CEI.</b> This will delay the process.</li>
                        <li style="text-align: justify"><b>Supplements must be submitted prior to vehicle completion.</b> Shop must review final figures before confirming.</li>
                        <li style="text-align: justify">Take photos of damaged parts and provide invoices. CEI must provide this to the client in order for shops to be paid for supplements. This also enables our clients to subrogate against the responsible party when applicable.</li>
                    </ul>
                    <li><b>D. COMPLETION OF REPAIRS</b></li>
                    <ul>
                        <li style="text-align: justify"><U>Upon completion of repairs, call CEI immediately to confirm final estimate amounts. Notify driver immediately. Ensure vehicle is clean prior to delivery.</U></li>
                        <li style="text-align: justify">Have driver sign and date the final invoice.</li>
                        <li style="text-align: justify">No vehicle is to be returned to a driver until all repairs have been completed unless approved by CEI.</li>
                        <li style="text-align: justify">Contact the local rental company to advise them if a rental was left at your shop.</li>
                        <li style="text-align: justify">Shop is responsible for collection of any deductibles. CEI will notify you of the deductible amount and remind you of the need to collect it. Very few of our clients have deductibles.</li>
                    </ul>
                    <li><b>E. BILLING</b><br/>The following paperwork is <b>REQUIRED</b> for proper payment.</li>
                    <ul>
                        <li style="text-align: justify">Copies of the original estimate, all supplements and photos. These should be faxed and emailed after figures are called into CEI.</li>
                        <li style="text-align: justify">Final bill/invoice with drivers signature reflecting TOTAL COST OF REPAIRS. Final bills should be faxed to <b>1-215-485-4659</b>.</li>
                        <li style="text-align: justify">When CEI receives call upon completion, all necessary paperwork, and photos, payment will be made in accordance with signed agreement.</li>
                    </ul>
                </ul>
              </font>
            </td>
        </tr>
        <tr>
            <td style="padding-top:15px;" valign="top" align="center"><font size="-3"><b>PLEASE CONTACT CEI AT <b>1-800-234-3300</b> IF YOU NEED FURTHER CLARIFICATION.</b></font></td>
        </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=FileDetails()%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 4 of 4</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<script runat="server">
  Public Function FileDetails() As String
    Dim nResult As String = "{0}<br/>Last updated on: {1}"
    Dim Path As String = Me.Request.MapPath(Me.AppRelativeVirtualPath)
    Dim FI As New System.IO.FileInfo(Path)
    Return String.Format(nResult, Me.AppRelativeVirtualPath.ToString().Replace("~/LetterWizard/", ""), FI.LastWriteTime.ToString())
  End Function
</script>