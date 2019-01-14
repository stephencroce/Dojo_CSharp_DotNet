<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

<!--// PAGE 1 of 1 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U><ASP:LABEL Runat=server ID=lblRevised />Repair Authorization</U></TD>
        </TR>
        <TR>
          <TD align=CENTER style="font:bold 10pt Sans-Serif;"><U><ASP:LABEL runat=server id=lblDate /></U></TD>
        </TR>  
      </TABLE>
    </DIV>
    
    <!--// Repair Facility //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;"><B>Repair Facility:</B> <ASP:LABEL runat=server id=lblShopName /></TD>
        </TR>
        <TR runat=server id=trAttention>
          <TD style="font:normal 10pt Sans-Serif;"><B>Attention:</B> <ASP:LABEL runat=server id=lblShopContact /></TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;"><%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group")%> authorizes the repairs to the following Claim.  Repair authorization is for specific amount specified.<BR>Please contact CEI immediately if you do not agree with the approved amount.</TD>
        <td>
             <%If (Me.Helper.Vehicle.SpecialCertificationInstruction <> "") Then%> 
                <b>Me.Helper.Vehicle.SpecialCertificationInstruction </b>
            <%End If %> 
        </td>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Customer / Contact Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Customer Information</TD>
              </TR>            
              <TR>
                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Customer:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimClient /></TD>
              </TR>

                        <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 12pt Sans-Serif;"><NOBR>Chrysler Claim Number:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 12pt Sans-Serif;"><%=Me.ClientClaimNumber%></TD></TR>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>CEI Portal Claim Number:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></TD></TR>
                        <%Else%>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Branch:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimBranch /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Claim #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimNumber /></TD>
              </TR> 
                        <%End If%>

                           
            </TABLE>
          </TD>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblEmployeeInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Employee Information</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblEmployeeName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblEmployeeAddress" /></NOBR></TD>
                </TR>
                <TR runat=server id="trEmployeeHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeWP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMWP" /></TD>
                </TR>
            </TABLE>
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblContactInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Contact Information</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relationship:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactRelationship" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblContactName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblContactAddress" /></NOBR></TD>
                </TR>
                <TR runat=server id="trContactHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactHP" /></TD>
                </TR>
                <TR runat=server id="trContactMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMHP" /></TD>
                </TR>
                <TR runat=server id="trContactWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactWP" /></TD>
                </TR>
                <TR runat=server id="trContactMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMWP" /></TD>
                </TR>
            </TABLE>                    
          </TD>
        </TR>           
      </TABLE>
    </DIV>
    
    <!--// Vehicle Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Vehicle Information</B> (please verify all information at time of inspection.)</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Year:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleYear" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Make:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMake" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Model:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleModel" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Style:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleStyle" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Color:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleColor" /></TD>
                </TR>
                </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>VIN:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleVIN" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Plate:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehiclePlate" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mileage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMileage" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Deductible:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleDeductable" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Unit #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleUnitNumber" /></TD>
                </TR>
              </TABLE>   
            </TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Purchase Order Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="padding-bottom:5px; font:normal 12pt Sans-Serif;"><B>CEI Purchase Order Information</B></TD>
        </TR>
        <TR>
            <TD valign=top width="100%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Description</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Issue Date</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>PO Number</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>PO Amount</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Date Revised</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Revised Estimate Amount</NOBR></TD>
                </TR>
                <ASP:PLACEHOLDER runat=server id=phPOInfo></ASP:PLACEHOLDER>
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif;"><NOBR>Total</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalPOAmount" /></NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalRevisedAmount" /></NOBR></TD>
                </TR>                
              </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>

    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Important Instructions</B> (in order to expedite repair approval/payment.)</TD>
        </TR>
        <TR>
            <TD valign=top>
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">This authorization is only valid for the approval amount (not additional open pending). No additional funds will be paid under this PO.  Contact CEI immediately if additional cost is anticipated - this PO covers only approved amount specified.</TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Supplements will NOT be paid unless CEI is notified promptly in advance, and prior to completion of repairs.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Authorizations can originate from CEI only. Neither Drivers, Managers nor Appraisers can issue repair approvals.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">All repairs require an estimate and clear photos of the damage. Payment delays can result if these documents are not sent to CEI in a timely manner.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Contact driver for a Monday Repair appointment - Contact CEI with date.</TD>
                </TR> 
                <% If Me.RootOrgId <> 25038 Then '..if it's NOT the Chrysler Group LLC... %>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">6.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">A copy of this Authorization must accompany the final invoice.</TD>
                </TR>
                <%Else%>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">6.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"> In order to receive payment, fax initial estimate and final invoice to 
                        Mary Kovar with Chrysler at 248-754-1010. If you have questions about payment, contact Mary at 248-754-1030. When faxing paperwork, be sure to 
                        include the Chrysler J/Z claim number on all paperwork. Payment is issued in the form of an 057 parts credit on the dealer's Weekly Billing Statement.</TD>
                </TR>
                <%End If  %>
                <TR>
                
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><%IIf(Me.RootOrgId = 25038, "6.", "7.")%></TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">If decals are needed they MUST be installed prior to vehicle being picked up by client.</TD>
                </TR> 
              </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>

    <%If Me.OrgCountryId = 2 Then%>
    <div style="padding-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td style="font:bold 10pt Sans-Serif; padding-bottom:10px;">Important Retail Sales Tax Information (PST)</td>
        </tr>
        <tr>
          <td style="font:normal 10pt Sans-Serif;">
            "Important Retail Sales Tax Information (PST) effective 01 July 2010"
            CEI Network Canada Inc is claiming an exemption from Provincial Sales Tax (PST) in the Provinces of Manitoba and Saskatchewan since CEI purchases are for resale to CEI Canadian Clients.
            For Manitoba and Saskatchewan Provinces CEI is responsible for charging, collecting and remitting all PST Provincial Sales Taxes to the appropriate Tax Authority.
            The PST should not be included in estimates or final invoices for the following Provinces.
            <p />
            <center>
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td colspan="4" style="font:bold 9pt Sans-Serif; text-align:center; padding-bottom:5px;">PST Provincial Retail Sales Account Numbers</td>
                </tr>
                <tr>
                  <td style="font:normal 8pt arial; padding-right:10px;">Manitoba</td>
                  <td style="font:normal 8pt arial; padding-right:10px;">MB</td>
                  <td style="font:normal 8pt arial; padding-right:10px;">848968863MT0001</td>
                  <td style="font:normal 8pt arial; padding-right:10px;">MB - PST Reporting #</td>
                </tr>
                <tr>
                  <td style="font:normal 8pt arial">Saskatchewan</td>
                  <td style="font:normal 8pt arial">SK</td>
                  <td style="font:normal 8pt arial"># 5779228</td>
                  <td style="font:normal 8pt arial">Registered Consumer</td>
                </tr>
              </table>
            </center>
          </td>
        </tr>
      </table>
    </div>
    <%End If%>

    <!--// Final Note //-->
    <DIV style="margin-top:30px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
            <TD valign=top style="font:normal 10pt Sans-Serif;">If any of the above information is incorrect, please contact our offices at 1-800-234-3300 and refer to<br /><B>Chrysler Claim Number: <%=Me.ClientClaimNumber%></B>.</TD>
          <%Else%>
            <TD valign=top style="font:normal 10pt Sans-Serif;">If any of the above information is incorrect, please contact our offices at 1-800-234-3300 and refer to claim number <B><ASP:LABEL runat=server id="lblClaimNumber2" /></B>.</TD>
          <%End If%>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                  Please Contact CEI with:
                  <UL>
                    <LI>Repair Appointment date (if vehicle is not currently in shop.)</LI>
                    <LI>Repair delays</LI>
                    <LI>Repair completion</LI>
                    <LI>Any delay in final vehicle pick-up.</LI>
                  </UL>
                  Payment delay may result if contact not made.
                </TD>
            </TR>
          </TABLE>
    </DIV>
</LW:PAGE>