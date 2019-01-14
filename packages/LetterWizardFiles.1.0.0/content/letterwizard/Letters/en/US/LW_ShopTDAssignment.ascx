<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopTDAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

<!--// PAGE 1 of 1 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo" /></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Tear-Down only Assignment</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Repair Facility //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;"><B>Repair Facility:</B> <ASP:LABEL runat=server id=Lbl_ShopName /><br><B>Attention:</B> <ASP:LABEL runat=server id="Lbl_ShopContactName" /></TD>
        </TR>
      </TABLE>
    </DIV>

    <!--// Content //-->
    <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group")%> authorizes the Tear-Down only to the following Claim:</TD>
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
                            <TD valign=top style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Customer Information</TD>
                        </TR>
                        <TR>
                          <TD>
                            <TABLE border=0 cellpadding=0 cellspacing=0>
                                <TR>
                                    <TD align=right valign=top style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Customer:</TD>
                                    <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client /></TD>
                                </TR>
                                <TR>
                                    <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Branch:</TD>
                                    <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch /></TD>
                                </TR>  
                                <TR>
                                    <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif; white-space:none;">Claim #:</TD>
                                    <TD style="padding-right:10px; font:bold 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number /></TD>
                                </TR>    
                            </TABLE>
                          </TD>
                        </TR>
                    </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Employee Information</TD>
                            </TR>
                            <TR>
                              <TD>
                                <TABLE border=0 cellpadding=0 cellspacing=0>
                                    <TR>
                                        <TD align=right valign=top style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Name:</TD>
                                        <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Address:</TD>
                                        <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></TD>
                                    </TR>
                                    <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Home Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Mobile Home Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Work Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Mobile Work Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                </TABLE>
                              </TD>
                            </TR>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Contact Information</TD>
                            </TR>
                            <TR>
                              <TD>
                                <TABLE border=0 cellpadding=0 cellspacing=0>
                                    <TR>
                                        <TD align=right valign=top style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Relationship:</TD>
                                        <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Name:</TD>
                                        <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Address:</TD>
                                        <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" /></TD>
                                    </TR>
                                    <ASP:PLACEHOLDER runat=server id="PH_Contact_HP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Home Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_HP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Mobile Home Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Work Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                    <ASP:PLACEHOLDER runat=server id="PH_Contact_MWP">
                                        <TR>
                                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Mobile Work Phone #:</TD>
                                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif; white-space:none;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MWP" /></TD>
                                        </TR>
                                    </ASP:PLACEHOLDER>
                                </TABLE>
                              </TD>
                            </TR>
                        </TABLE>                    
                    </ASP:PANEL>
                </TD>
            </TR>           
        </TABLE>
    </DIV>

    <!--// Vehicle Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Vehicle Information</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0">
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Year:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Make:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Model:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Style:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Style" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Color:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" /></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0">
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">VIN:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Plate:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Mileage:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Unit #:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_UnitNumber" /></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// PO Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Purchase Order Information</B></TD>
            </TR>
            <TR>
                <TD valign=top style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0">
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Tear-down only PO Number:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_Number" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Amt Currently Open:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_AmtOpen" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Open Items:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_OpenItems" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Damage Estimate:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_DmgEstimate" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Revised Damage Estimate:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_RevisedDmgEstimate" /></TD>
                        </TR>
                        <TR>
                            <TD align=right valign=top style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; white-space:none;">Deductible:</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_PO_Deductible" /></TD>
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
            <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Important Tear-down Instructions</B></TD>
            </TR>
            <TR>
                <TD valign=top>
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">This Authorization is for a TEAR-DOWN ONLY. No repairs are authorized on this vehicle, and no repair dollars will be paid for a Tear-Down.</TD>
                    </TR>
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Drivable vehicles - please contact driver or claim contact to schedule a Monday appointment. Contact CEI with date of Tear-Down.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Non-Drivable vehicles - Tear-Down results are to be called CEI within 1-2 business days</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Order Parts at the time of this Tear-Down Approval</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Please perform a complete Tear-Down and call CEI with the results immediately. (Follow up your call with faxing estimate)</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">6.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Repair Authorizations can originate from CEI only. Neither Drivers, Managers nor Appraisers can issue repair approvals.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">7.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Repair PO will only be authorized upon receipt of Tear-Down Results (Tear-Down PO may not be used as Repair PO)</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">8.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Be sure to document any and all additional items or repairs needed in a separate estimate, and take any additional photos necessary to document the additional damage. Photos are to be e-mailed to fleetemail@ceinetwork.com</TD>
                    </TR> 
                    <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>  
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">9.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">If the vehicle totals after tear-down, send any charges to Chrysler per normal billing procedures.</TD>
                    </TR>     
                    <%End If%>                                                                                                                       
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
              <TD valign=top style="font:normal 10pt Sans-Serif;">If any of the above information is incorrect, or if you anticipate a delay in Tear-Down, please contact our offices at 1-800-234-3300 and refer to claim number <B><ASP:LABEL runat=server id="Lbl_ClaimNumber" /></B></TD>
            </TR>
        </TABLE>
    </DIV>    
</LW:PAGE>