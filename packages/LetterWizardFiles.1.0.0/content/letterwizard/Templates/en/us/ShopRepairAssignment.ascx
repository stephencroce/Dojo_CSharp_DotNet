<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// Page 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">

      <!--// COVER PAGE //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><BR>
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
      </DIV>    

      <!--// LOGO //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align="right" style=padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif"%>" /></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// TITLE Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align=CENTER CLASS="TextTitle"><U><%=IIf(Me.IsRevised, "Revised ", String.Empty)%>Repair Authorization</U></TD>
          </TR>
          <TR>
            <TD align=CENTER CLASS="TextBold"><U><%=Now.ToShortDateString()%></U></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// Repair Facility //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD class="TextNormal"><B>Repair Facility:</B> <%=Me.ShopName()%></TD>
          </TR>
          <%If Me.IsShopAssignment Then%>
          <TR>
            <TD class="TextNormal"><B>Attention:</B> <%=Me.ShopContact()%></TD>
          </TR>
          <%End If%>
        </TABLE>
      </DIV>
      
      <!--// Content //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD class="TextNormal">The CEI Group authorizes the repairs to the following Claim.  Repair authorization is for specific amount specified.<BR>Please contact CEI immediately if you do not agree with the approved amount.</TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Employee / Contact Information //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD valign=top class="TextLargeBold CellTitle" colspan=2>Customer Information</TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Customer:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ClientName%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Branch:</TD>
                  <TD class="TextNormal CellValue"><%=Me.BranchName%></TD>
                </TR>
                <TR>
                  <TD class="TextBold CellLabel">Claim #:</TD>
                  <TD class="TextBold CellValue"><%=Me.ClaimNumber%></TD>
                </TR>
                <TR>                  
                  <TD class="TextBold CellValue" colspan="2">&nbsp;</TD>
                 </TR>    
                <%If Me.IsTaxExempt Then%>                        
                <tr>                  
                  <td class="TextBold CellValue" colspan="2" style="font:normal 14pt Sans-Serif;">This client is <u><b>tax exempt</b></u>, please do not add sales tax.</td>
                </tr>                            
                <%End If%>

 
 
              </TABLE>
            </TD>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="TextLargeBold CellTitle" colspan="2"><%=iif(Me.IsEmployee,"Employee","Contact")%> Information</TD>
                </TR>
                <TR style="display:<%=iif(Me.IsEmployee,"Hidden","Visible")%>">
                  <TD class="TextNormal CellLabel">Relationship:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactRelationship%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Name:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactName%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Address:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactAddress%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Home Phone #:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactHomePhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Mobile Home Phone #:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactMobileHomePhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Work Phone #:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactWorkPhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Mobile Work Phone #:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactMobileWorkPhone%></TD>
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
            <TD CLASS="TextLargeNormal CellTitle" colspan=2><B>Vehicle Information</B> (please verify all information at time of inspection.)</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Year:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleYear%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Make:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMake%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Model:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleModel%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Style:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleStyle%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Color:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleColor%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Vin:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleVin%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Plate:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehiclePlate%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Mileage:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMileage%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Deductible:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleDeductible%></TD>
                </TR>
                <tr>
                  <td class="TextNormal CellLabel">Unit #:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleUnitNumber%></td>
                </tr>
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
                  <TD class="CellHeader CellPaddingRight TextBold">Description</TD>
                  <TD class="CellHeader CellPaddingBoth TextBold">Issue Date</TD>
                  <TD align=right class="CellHeader CellPaddingBoth TextBold">PO Number</TD>
                  <TD align=right class="CellHeader CellPaddingBoth TextBold">PO Amount</TD>
                  <TD class="CellHeader CellPaddingBoth TextBold">Date Revised</TD>
                  <TD align=right class="CellHeader CellPaddingLeft TextBold">Revised PO Amount</TD>
                </TR>
    
    <%
      Dim DT As System.Data.DataTable = Me.ReportData()
      If Not DT Is Nothing Then
        For Each Row As System.Data.DataRow In DT.Rows
    %>
                <tr>
                  <td class="CellValue CellPaddingBoth TextNormal"><%=Row(0)%></td>
                  <td class="CellValue CellPaddingBoth TextNormal"><%=Row(1)%></td>
                  <td align="right" class="CellValue CellPaddingBoth TextNormal"><%=Row(2)%></td>
                  <td align="right" class="CellValue CellPaddingBoth TextNormal"><%=Row(3)%></td>
                  <td class="CellValue CellPaddingBoth TextNormal"><%=Row(4)%></td>
                  <td align="right" class="CellValue CellPaddingLeft TextNormal"><%=Row(5)%></td>
                </TR>
     <%        
        Next
      End If
     %>
                <TR>
                  <TD class="CellFooter CellPaddingRight TextBold">Total</TD>
                  <TD class="CellFooter CellPaddingBoth TextNormal">&nbsp;</TD>
                  <TD class="CellFooter CellPaddingBoth TextNormal">&nbsp;</TD>
                  <TD align=right class="CellFooter CellPaddingBoth TextNormal">&nbsp;<%=Me.POAmountTotal()%></TD>
                  <TD class="CellFooter CellPaddingBoth TextNormal">&nbsp;</TD>
                  <TD align=right class="CellFooter CellPaddingLeft TextNormal">&nbsp;<%=Me.RevisedPOAmountTotal()%></TD>
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
            <TD valign=top colspan=2 class="TextLargeBold"><B>Important Instructions</B> (in order to expedite repair approval/payment.)</TD>
          </TR>
          <TR>
            <TD valign=top>
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="Bullet TextNormal">1.</TD>
                  <TD class="BulletContent TextNormal">This authorization is only valid for the approval amount (not additional open pending). No additional funds will be paid under this PO. Contact CEI immediately if additional cost is anticipated - this PO covers only approved amount specified.</TD>
                </TR>
                <TR>
                  <TD class="Bullet TextNormal">2.</TD>
                  <TD class="BulletContent TextNormal">Supplements will NOT be paid unless CEI is notified promptly in advance, and prior to completion of repairs.</TD>
                </TR> 
                <TR>
                  <TD class="Bullet TextNormal">3.</TD>
                  <TD class="BulletContent TextNormal">Authorizations can originate from CEI only. Neither Drivers, Managers nor Appraisers can issue repair approvals.</TD>
                </TR> 
                <TR>
                  <TD class="Bullet TextNormal">4.</TD>
                  <TD class="BulletContent TextNormal">All repairs require an estimate and clear photos of the damage. Payment delays can result if these documents are not sent to CEI in a timely manner.</TD>
                </TR> 
                <TR>
                  <TD class="Bullet TextNormal">5.</TD>
                  <TD class="BulletContent TextNormal">Contact driver for a Monday Repair appointment - Contact CEI with date.</TD>
                </TR> 
                <% If Me.RootOrgId <> 25038 Then '..if it's NOT the Chrysler Group LLC... %>
                <TR>
                  <TD class="Bullet TextNormal">6.</TD>
                  <TD class="BulletContent TextNormal">A copy of this Authorization must accompany the final invoice.</TD>
                </TR>
                <%Else%>
                <TR>
                  <TD class="Bullet TextNormal">6.</TD>
                  <TD class="BulletContent TextNormal">In order to receive payment, fax initial estimate and final invoice to 
                            Mary Kovar with Chrysler at 248-754-1010. If you have questions about payment, contact Mary at 248-754-1030. When faxing paperwork, be sure to 
                            include the Chrysler J/Z claim number on all paperwork. Payment is issued in the form of an 057 parts credit on the dealer's Weekly Billing Statement.</TD>
                </TR>
                <%End If%>
                <TR>
                  <TD class="Bullet TextNormal"><%IIf(Me.RootOrgId = 25038, "6.", "7.")%></TD>
                  <TD class="BulletContent TextNormal">If decals are needed they MUST be installed prior to vehicle being picked up by client.</TD>
                </TR>
              </TABLE>                                
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Final Note //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD valign="top" class="TextNormal">If any of the above information is incorrect, please contact our offices at 1-800-234-3300 and refer to claim number <B><%=Me.ClaimNumber%></B>.</TD>
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
    </TD>
  </TR>
  <TR>
    <TD height="1px">
      <!--// Footer //-->
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD Colspan="2" CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright <%=New DateTime().Year.ToString() %>, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%>. Legally Privileged and Confidential. Any unauthorized use or distribution is prohibited.</TD>
          
        </TR>
        <TR>
          
          <TD CLASS="TextSmallBold">Page 1 of 1</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial;" align="right">Templates/en/us/ShopRepairAssignment.ascx</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>