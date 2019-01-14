<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DecisionRequest" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->



<div style="font-family: Arial; font-size: 10px;">
<!--// Page 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">

      <!--// COVER PAGE //
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              The CEI Group, Inc.<BR>
              4850 Street Road, Suite 200<BR>
              Trevose, PA 19053
            </TD>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Phone: 1-800-234-3300<BR>
              Fax: 1-215-485-4650<BR>
              Photos: fleetemail@ceinetwork.com
            </TD>
          </TR>
        </TABLE>
      </DIV>  -->  

        <div>
            <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; width:100%">

                <tr>
                    <td>
                        This email requires your action. Claim #  has received a repair estimate and the following table provides 
                        you with information for your repair decision. 

                        <h3 style="color: darkblue; text-decoration: underline">Claim Information</h3>
                        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; width:100%">
                            <tr>
                                <td style="width:50%">Claim Number</td>
                                <td style="width:50%"><%=Me.Helper.Claim.ClaimID%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Date Reported</td>
                                <td style="width:50%"><%=Me.DateReported%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Accident Code</td>
                                <td style="width:50%"><%=Me.AccidentCode%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Accident Type</td>
                                <td style="width:50%"><%=Me.AccidentType%></td>
                            </tr>
                        </table>
                        <h3 style="color: darkblue; text-decoration: underline">Vehicle Information</h3>
                        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; width:100%">
                            <tr>
                                <td style="width:50%">Driver Name</td>
                                <td style="width:50%"><%=Me.DriverName%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Driver City/State/Zip</td>
                                <td style="width:50%"><%=Me.DriverCityStateZip%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Donlen Vehicle Number (DVN)</td>
                                <td style="width:50%"><%=Me.Helper.ClaimV2.Vehicle.ClientVehNo%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Customer Vehicle Number (CVN)</td>
                                <td style="width:50%">

                                    <LW:EditBox runat="server" id="txt_cvn" width="100%" height="24px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%">Vehicle Year, Make, Model</td>
                                <td style="width:50%"><%=Me.Helper.ClaimV2.Vehicle.VehYear%>, <%=Me.Helper.ClaimV2.Vehicle.Make%>, <%=Me.Helper.ClaimV2.Vehicle.Model%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Odometer</td>
                                <td style="width:50%"><%=Me.Helper.ClaimV2.Vehicle.Mileage%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">
                                    <span>In Service Date with Donlen</span>
                                    
                                </td>
                                <td style="width:50%">
                                    <LW:EditBox runat="server" id="txt_isd" width="100%" height="24px" />
  
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%">Years in Service with Donlen</td>
                                <td style="width:50%"><%=Me.TimeInServiceDisplay%></td>
                            </tr>                            
                            <tr>
                                <td style="width:50%">New Vehicle On Order</td>
                                <td style="width:50%"><%=Me.NewVehicleOnOrder%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Vehicle Towed</td>
                                <td style="width:50%"><%=Me.Towed%></td>
                            </tr>
                        </table>
                        <h3 style="color: darkblue; text-decoration: underline">Repair Information</h3>
                        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; width:100%">
                            <tr>
                                <td style="width:50%">Damage Estimated Amount</td>
                                <td style="width:50%"><%=Me.EstimateAmtDisplay%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Vehicle Fair Market Value (FMV)</td>
                                <td style="width:50%">

                                    <LW:EditBox runat="server" id="txt_fmv" width="100%" height="24px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width:50%">Repair Cost in Percentage of FMV</td>
                                <td style="width:50%"><%=Me.PercentageOfFMV%></td>
                            </tr>
                            <tr>
                                <td style="width:50%">Recommended FMV Threshold</td>
                                <td style="width:50%"><LW:EditBox runat="server" id="txt_rpofmv" width="100%" height="24px" /></td>
                            </tr>
                            <tr>
                                <td style="width:50%">&nbsp;</td>
                                <td style="width:50%">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width:50%; color: darkblue; font-weight: bold">Donlen Recommended Repair Decision</td>
                                <td style="width:50%">
                                    <LW:EditBox runat="server" id="txt_decision" width="100%" height="24px" />
                                </td>
                            </tr>
                        </table>
                        
                        <p>
                            To access the details of this claim in FleetWeb please <a href="https://fleetweb.donlen.com">click here</a>. If you authorize Donlen to proceed 
                            with the repair as estimated, then please respond to this email with the word "Approved"
                        </p>
                        <p>
                            Should you have any questions regarding this repair, then you can reply to this email with your 
                            inquiry and we will respond to you in a timely manner. You can also reach us at 800-323-1483 in case you would like to personally follow up with our accident team. Thank you!
                        </p>
                        <p>
                            Sincerely, <br /><br />

                            Donlen Accident Team

                        </p>

                    </td>
                    
                </tr>
                <tr>
                    <td style="align-content:center;">
                        <center>
                        <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/donlen.png"%>" />
                        </center>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; padding:10px; background-color: darkblue; color: white">@2014 Donlen Corporation. All rights reserved.</td>
                </tr>
            </table>

        </div>
      
    </TD>
  </TR>

</TABLE>
</div>


<script runat="server">
  Sub OnUpdate(ByVal sender As Object, ByVal e As EventArgs)
 
  End Sub

  Sub OnEdit(ByVal sender As Object, ByVal e As EventArgs)
 
  End Sub
    
  Private Sub PageLoad() Handles Me.Load

  End Sub
</script>