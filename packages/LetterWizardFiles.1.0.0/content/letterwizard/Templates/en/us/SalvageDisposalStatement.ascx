<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.Salvage" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<table border="0" cellpadding="0" cellspacing="0" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <!--// Header Section //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><br/>
              4850 E. Street Road, Suite 200<br/>
              Trevose, PA 19053-6646
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Phone: 1-215-364-5600<br/>
              www.ceinetwork.com
            </td>
          </tr>
        </table>
      </div>

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="right" style="padding-top:5px;"><img alt="logo" src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" /></td>
          </tr>
        </table>
      </div>

      <!--// TITLE Section //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="center" class="TextTitle"><u>CEI Vehicle Remarketing<br />Vehicle Disposal Statement</u></td>
          </tr>
          <tr>
            <td align="center" class="TextBold"><u><%=Now.ToShortDateString()%></u></td>
          </tr>
        </table>
      </div>

      <!--// Client Information //-->
      <div style="padding-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" class="TextNormal" style="padding-right:10px;">To:</td>
            <td valign="top" class="TextNormal">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr><td class="TextNormal"><%=Me.FleetContact%></td></tr>
                <tr><td class="TextNormal"><%=Me.FleetName%></td></tr>
              </table>
            </td>
            <td valign="top" class="TextNormal" style="padding-right:10px; padding-left:50px;">From:</td>
            <td valign="top" class="TextNormal">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr><td class="TextNormal"><%=Me.GetProperCEIName(Me.OrgCountryId)%> Vehicle Remarketing Dept.</td></tr>
                <tr><td class="TextNormal">4850 E. Street Rd<br />Suite 200<br />Trevose, PA 19053</td></tr>
                <tr><td class="TextNormal">1-800-688-2524 (Art Lance or Karen Laskowski)</td></tr>
                <tr><td class="TextNormal">CEI Claim #: <%=Me.Helper.ClaimNumber%></td></tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Content //-->
      <div style="padding-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td style="font:normal 10pt Sans-Serif;">
              CEI’s Vehicle Remarketing is providing you with this “Vehicle Disposal Statement” for the recent transaction we handled on your companies behalf.<p />
              Also enclosed is the sale & shop and/or appraiser paperwork related  to this total loss vehicle.
            </td>
          </tr>
        </table>
      </div>

      <!--// Vehicle Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextLargeBold CellTitle">Vehicle Information</td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Employee:</td>
                  <td class="TextNormal CellValue"><%=Me.EmployeeName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Unit #:</td>
                  <td class="TextNormal CellValue"><%=Me.Helper.Vehicle.ClientVehNo%></td>
                </tr>
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
                  <td class="TextNormal CellLabel">Color:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleColor%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">VIN #:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleVin%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Mileage:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleMileage%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Unit #:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleUnitNumber%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Plate #:</td>
                  <td class="TextNormal CellValue"><%=Me.VehiclePlate%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">State:</td>
                  <td class="TextNormal CellValue"><%=Me.Helper.Vehicle.StateProvince%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Sale Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextLargeBold CellTitle">Sale Information</td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Sale Date:</td>
                  <td class="TextNormal CellValue"><%=Me.Salvage.Decision_DT.Value.ToString("d")%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Sale Amount:</td>
                  <td class="TextNormal CellValue"><%=Me.SubmittedAmount%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Less Charges:</td>
                  <td class="TextNormal CellValue"><%=Me.LessCharges%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Disposal Fee:</td>
                  <td class="TextNormal CellValue"><%=String.Format("{0:c}", Me.Salvage.DisposalFees)%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Net To Customer:</td>
                  <td class="TextNormal CellValue"><%=Me.NetToCEI%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Check Is Payable To:</td>
                  <td class="TextNormal CellValue"><b>***MISSING PROPERTY***</b></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Title Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextLargeBold CellTitle">Title Information</td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Please assign title to:</td>
                  <td class="TextNormal CellValue"><%=Me.Salvage.AssignTitleInstructions%></td>
                </tr>
                <tr>
                  <td colspan="2" class="TextNormal CellLabel">
                    <u>Please have title and all related paperwork mailed to:</u><br />
                    <%=Me.GetProperCEIName(Me.OrgCountryId)%> Vehicle Remarketing<br />
                    4850 E. Street Road<br />
                    Suite 200<br />
                    Trevose, PA 19053-6646
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Signature //-->
      <div style="padding-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal" style="padding-bottom:10px;">Thank you</td>
          </tr>
          <tr>
            <td class="TextNormal">CEI Vehicle Remarketing</td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2011, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/en/us/SalvageDisposalStatement</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 1</td>
        </tr>
      </table>
    </td>
  </tr>
</table>