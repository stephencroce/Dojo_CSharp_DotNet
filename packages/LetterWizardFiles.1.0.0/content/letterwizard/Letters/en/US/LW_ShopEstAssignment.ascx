<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

<!--// PAGE 1 of 3 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="3">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style="padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align=center style="font:bold 14pt Sans-Serif;">
              <%If (Me.ASAP_IsTeardownPriortySet() = False) Then%> 
                <u>Claim Assignment</u>
              <%Else%>
                <u><b>Tear-Down Only Claim Assignment</b></u>
              <%End If %>
            </td>
          </tr>
        </TABLE>
    </DIV>
 
    <!--// Content //-->
    <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td style="font:normal 10pt Sans-Serif;">
            <%If (Me.ASAP_IsTeardownPriortySet() = False) Then%> 
              This is a confirmation that CEI has assigned one of our drivers to receive an estimate only at <b><%=Me.ShopName%>; this is not a repair authorization</b>.  The information on the claim is as follows:
            <%Else%>
              This is an authorization that CEI has approved <b>(2)</b> hours of Tear Down only at <b><%=Me.ShopName%></b>; provided that the vehicle is not an obvious <u>Total Loss</u>. This is not authorization to repair the vehicle, only to handle the tear Down.  The information on the claim is as follows:
            <%End If %> 

            <%If (Me.Helper.Vehicle.SpecialCertificationInstruction <> "") Then%> 
                <b>Me.Helper.Vehicle.SpecialCertificationInstruction </b>
            <%End If %> 

            </td>
          </tr>
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
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Customer:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Branch:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch /></TD>
                        </TR>  
                        <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 12pt Sans-Serif;"><NOBR>Chrysler Claim Number:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 12pt Sans-Serif;"><%=Me.ClientClaimNumber%></TD></TR>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>CEI Portal Claim Number:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></TD></TR>
                          <TR><TD width="100%" colspan="2" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">This client is <u><b>tax exempt</b></u>, please do not add sales tax.</TD></TR>
                        <%Else%>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Claim #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number /></TD></TR>
                          <TR><TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Client Claim #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Client_Claim_Number /></TD></TR>                            
                          <TR><TD width="100%" colspan="2" style="padding-left:10px; padding-right:5px; font:normal 14pt Sans-Serif;"><ASP:LABEL runat="SERVER" Text="This client is <u><b>tax exempt</b></u>, please do not add sales tax." id="lbl_tax_exempt" /></TD></TR>
                        <%End If%>
                   </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Employee Information</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Contact Information</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relationship:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MWP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Vehicle Information</B> (please verify all information at time of inspection.)</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Year:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Make:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Model:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Style:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Style" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Color:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" /></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Plate:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mileage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Deductible:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Deductible" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Unit #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_UnitNumber" /></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

  <!--// Damage Information //-->
  <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
              <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Damage Information</B></TD>
          </TR>
          <TR>
              <TD valign=top width="50%" style="padding-top:5px;">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                      <TR>
                          <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Primary Damage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Primary" /></TD>
                      </TR>
                      <TR>
                          <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Additional Damage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Damage_Additional" /></NOBR></TD>
                      </TR>
                  </TABLE>                                
              </TD>
              <TD valign=top width="50%" style="padding-top:5px;">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                      <TR>
                          <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Location:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Location" /></TD>
                      </TR>
                      <TR>
                          <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Damage Area:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Area" /></TD>
                      </TR>
                  </TABLE>   
              </TD>
          </TR>
      </TABLE>
  </DIV>

  <!--// Important Instructions //-->
  <div style="margin-top:30px;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <%If (Me.ASAP_IsTeardownPriortySet() = True) Then%> 
        <tr>
          <td valign="top" colspan="2" style="font:normal 16pt Sans-Serif;"><b>Important Tear Down Only Specific Instructions</b> (in order to expedite repair approval/payment.)</td>
        </tr>
        <tr>
          <td valign="top">
            <ol>
              <li style="font:normal 10pt Sans-Serif;">If you are unable to begin this <b>Tear Down immediately</b>, please call CEI at <NOBR>1-800-234-3300.</NOBR></li>
              <li style="font:normal 10pt Sans-Serif;">If the vehicle appears to be a <b><u>Total Loss, DO NOT</u></b> perform a Tear Down. Call CEI immediately to advise of the total loss and begin to write a damage estimate.</li>
              <li style="font:normal 10pt Sans-Serif;">CEI Must be contacted with the estimate within 24 hours from the time the Driver or vehicle arrives at the shop.</li>
              <li style="font:normal 10pt Sans-Serif;"><%=Me.CompletionInstructions%></li>
              <li style="font:normal 10pt Sans-Serif;">Do not order parts, this authorization is for Tear down only.</li>
              <% If Me.RootOrgId = 25539 And False Then ' Donlen %>
                <li style="font:normal 10pt Sans-Serif;">Please do not write for aftermarket sheet metal.</li>    
              <%End If%>
              <% If Me.RootOrgId = 22589 Then ' Ingersoll Rand %>
                <li style="font:normal 10pt Sans-Serif;">Please take an additional photograph of the entire vehicle positioned from the front passenger corner.</li>    
                <li style="font:normal 10pt Sans-Serif;">Please take pictures of all interior up fitting.</li>    
              <%End If%>
              <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
                <li style="font:normal 10pt Sans-Serif;">Chrysler requires a 10% parts price discount</li>
                <li style="font:normal 10pt Sans-Serif;">Chrysler does not permit markup for sublet body repairs</li>
                <%--<li style="font:normal 10pt Sans-Serif;"> In order to receive payment, fax initial estimate and final invoice to Mary Kovar with Chrysler at 248-754-1010. If you have questions about payment, contact Mary at 248-754-1030. When faxing paperwork, be sure to include the Chrysler J/Z claim number on all paperwork. Payment is issued in the form of an 057 parts credit on the dealer's Weekly Billing Statement.</li>--%>
              <%End If%>
            </ol>
          </td>
        </tr>
        <tr>
          <td valign="top" colspan="2" style="font:normal 12pt Sans-Serif;"><b>Urgent:</b> This is <b>NOT</b> a repair approval. Authorization and Purchase Orders will originate from CEI once a decision is made.</td>
        </tr>
      <%Else%>
        <tr>
          <td valign="top" colspan="2" style="font:normal 12pt Sans-Serif;"><b>Important Instructions</b> (in order to expedite repair approval/payment.)</td>
        </tr>
        <tr>
          <td valign="top">
            <ol>
              <li style="font:normal 10pt Sans-Serif;">If you are unable to handle this assignment, please call CEI at <NOBR>1-800-234-3300</NOBR> immediately.</li>
              <li style="font:normal 10pt Sans-Serif;">Be sure to follow any special instructions that accompany this assignment when writing the estimate.</li>
              <li style="font:normal 10pt Sans-Serif;">CEI Must be contacted with the estimate within 24 hours from the time the Driver or vehicle arrives at the shop.</li>
              <li style="font:normal 10pt Sans-Serif;"><%=Me.CompletionInstructions%></li>
              <li style="font:normal 10pt Sans-Serif;">Take clear photos of all damage and vehicle plate.</li>
              <li style="font:normal 10pt Sans-Serif;">This is not a repair approval. <b>Authorizations</b> and <b>Purchase Orders</b> will originate from CEI only.</li>
              <li style="font:normal 10pt Sans-Serif;">Upon inspection of a drivable vehicle, if you feel vehicle is unsafe, please contact CEI immediately.</li>
              <li style="font:normal 10pt Sans-Serif;">If there is <b>No Damage</b> to the vehicle, please fill out the "Certificate of No Damage" and fax it back to CEI. <b>You <u>DO NOT</u> need to write an estimate.</b></li>
              <% If Me.RootOrgId = 25539 And False Then ' Donlen %>
                <li style="font:normal 10pt Sans-Serif;">Please do not write for aftermarket sheet metal.</li>    
              <%End If%>
              <% If Me.RootOrgId = 22589 Then ' Ingersoll Rand %>
                <li style="font:normal 10pt Sans-Serif;">Please take an additional photograph of the entire vehicle positioned from the front passenger corner.</li>    
                <li style="font:normal 10pt Sans-Serif;">Please take pictures of all interior upfitting.</li>    
              <%End If%>
              <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
                <li style="font:normal 10pt Sans-Serif;">Chrysler requires a 10% parts price discount</li>
                <li style="font:normal 10pt Sans-Serif;">Chrysler does not permit markup for sublet body repairs</li>
                <li style="font:normal 10pt Sans-Serif;">Chrysler does not permit markup for sublet body repairs</li>
                <li style="font:normal 10pt Sans-Serif;"> In order to receive payment, fax initial estimate and final invoice to Mary Kovar with Chrysler at 248-754-1010. If you have questions about payment, contact Mary at 248-754-1030. When faxing paperwork, be sure to include the Chrysler J/Z claim number on all paperwork. Payment is issued in the form of an 057 parts credit on the dealer's Weekly Billing Statement.</li>
              <%End If%>
            </ol>
          </td>
        </tr>
      <%End If%>
    </table>
  </div>

  <!--// Decals / PDR //-->
  <div style="margin-top:30px;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td valign="top" colspan="2" style="font:normal 12pt Sans-Serif;"><B>Decals / Paintless Dent Removal (PDR)</B></td>
      </tr>
      <tr>
        <td valign="top">
          <ol>
            <li style="font:normal 10pt Sans-Serif;">When decals require replacement, submit R+I time, indicate which panel, specific wording, color of decals, and confirm all information is on the estimate.</li>
            <li style="font:normal 10pt Sans-Serif;">PDR - PDR can be utilized whenever this process represents the most efficient and cost effective method.</li>
            <li style="font:normal 10pt Sans-Serif;">Fill out the Decal request form and fax it back to 215-485-4652.</li>
          </ol> 
        </td>
      </tr> 
    </table>
  </div>

  <!--// Final Note //-->
  <div style="margin-top:10px;">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
			  <td valign="top" style="font:normal 10pt Sans-Serif;">The Driver has agreed to come in for an estimate on or by (<b><ASP:LABEL runat=server id="Lbl_EstApptDate" /></b>).  If the Driver does not come in by this date please call CEI at <nobr>1-800-234-3300</nobr>, so that we may inform our customer.  If there are any problems with towing, please contact CEI.</td>
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
        <td valign="top" style="font:normal 10pt Sans-Serif; padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /></td>
      </tr>
      <tr>
        <td style="border-top:solid 1px #000000;">&nbsp;</td>
      </tr>          
    </table>
  </div>   
</LW:PAGE>

<!--// PAGE 2 of 3 //-->
<LW:PAGE runat=server id="PG_2" pagenumber="2" pagecount="3">
    <!--// TITLE Section //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td align=center style="font:bold 14pt Sans-Serif;">
            <u><b>Certificate of No Damage</b></u>
          </td>
        </tr>
        <tr>
          <td align=center style="font:bold 14pt Sans-Serif;">
            <b>Please fill out this form and fax it back to CEI at 215-485-4650</b>
          </td>
        </tr>
      </table>

    <!--// Claim Details //-->
  <table border="0" cellpadding="0" cellspacing="0" style="margin-top:10px;">
    <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
      <tr>
        <td align="right" style="font:bold 12pt Sans-Serif; white-space:nowrap;">Chrysler Claim Number:</td>
        <td align="left" style="padding-left:15px; font:bold 12pt Sans-Serif;"><%=Me.ClientClaimNumber%></td>
      </tr>
      <tr>
        <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">CEI Portal Claim Number:</td>
        <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></td>
      </tr>
    <%Else%>
      <tr>
        <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Claim Id:</td>
        <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></td>
      </tr>
    <%End If%>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Customer:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClientName%></td>
    </tr>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Branch:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.BranchName%></td>
    </tr>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; vertical-align:top; white-space:nowrap;">Shop Requesting:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ShopName%><br /><%=Me.ShopAddress%></td>
    </tr>
  </table>
  <p />
  <!--// No Damage Form //-->
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:10px;">
    <tr>
      <td style="font:normal 14pt arial; border-bottom:solid 1px #000;">Inspection Date:</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:10px;">
    <tr>
      <td style="font:normal 14pt arial; border-bottom:solid 1px #000;">Who inspected the vehicle:</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:10px;">
    <tr>
      <td style="font:normal 14pt arial; border-bottom:solid 1px #000;">VIN:</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:10px;">
    <tr>
      <td style="width:50%; font:normal 14pt arial; border-bottom:solid 1px #000;">Plate:</td>
      <td style="width:50%; font:normal 14pt arial; border-bottom:solid 1px #000;">State:</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:30px;">
    <tr>
      <td style="width:60%; font:normal 14pt arial;">I inspected the vehicle and there is no damage.</td>
      <td style="width:60%;">&nbsp;</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:40px;">
    <tr>
      <td style="width:60%; font:normal 12pt arial; border-top:solid 1px #000;"">(Inspector's signature)</td>
      <td style="width:60%;">&nbsp;</td>
    </tr>
  </table>
  
  
  <div style="border-bottom:dashed 1px #000; margin-top:80px; margin-bottom:10px;"></div>
    
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td align=center style="font:bold 14pt Sans-Serif;">
            <u><b>Decal Request Form</b></u>
          </td>
        </tr>
        <tr>
          <td align=center style="font:bold 14pt Sans-Serif;">
            <b>Please fill out this form and fax it back to CEI at 215-485-4652</b>
          </td>
        </tr>
      </table>
    

  <table border="0" cellpadding="0" cellspacing="0" style="margin-top:10px;">
    <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
      <tr>
        <td align="right" style="font:bold 12pt Sans-Serif; white-space:nowrap;">Chrysler Claim Number:</td>
        <td align="left" style="padding-left:15px; font:bold 12pt Sans-Serif;"><%=Me.ClientClaimNumber%></td>
      </tr>
      <tr>
        <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">CEI Portal Claim Number:</td>
        <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></td>
      </tr>
    <%Else%>
      <tr>
        <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Claim Id:</td>
        <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClaimNumber%></td>
      </tr>
    <%End If%>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Customer:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ClientName%></td>
    </tr>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; white-space:nowrap;">Branch:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.BranchName%></td>
    </tr>
    <tr>
      <td align="right" style="font:normal 10pt Sans-Serif; vertical-align:top; white-space:nowrap;">Shop Requesting:</td>
      <td align="left" style="padding-left:15px; font:normal 10pt Sans-Serif;"><%=Me.ShopName%><br /><%=Me.ShopAddress%></td>
    </tr>
  </table>
  <p />
  <table border="0" cellpadding="0" cellspacing="0" style="margin-top:10px;">
    <tr>
      <td style="font:normal 14pt sans-serif;">Decal Replacement Required?</td>
      <td style="font:normal 14pt sans-serif; padding-top:5px; padding-left:25px;">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</td><td style="font:normal 14pt sans-serif; padding-right:25px; padding-left:5px;">Yes</td>
            <td style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</td><td style="font:normal 14pt sans-serif; padding-right:5px; padding-left:5px;">No</td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:30px;">
    <tr>
      <td style="font:normal 14pt arial;">Please indicate panels involved, wording, colors, and size:</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:20px;">
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
    <tr><td style="font:normal 18pt arial; border-top:solid 1px #000;">&nbsp;</td></tr>
  </table>



</LW:PAGE>

<!--// PAGE 3 of 3 //-->
<LW:PAGE runat=server id="PG_3" pagenumber="3" pagecount="3">
  <table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tr>
      <td valign="top" align="center"><font size=-3><b>CEI Auto Claims Management<br /><i><u>Fleet Repair Facility Procedures and Guidelines</u></i></b></font></td>
    </tr>
    <tr>
      <td style="padding-right:80px;">
        <font size=-3>
          <ul>
            <li style="list-style-type:upper-alpha; margin-top:5px;">
              <b>ESTIMATES</b>
              <ul>
                <li style="text-align: justify">Once your estimate  is completed send it to CEI using their preferred method.</li>
                <li style="text-align: justify"><b>Include the following information on your estimate:</b> Driver/Contact name, telephone number, company, <b>CEI claim number, mileage, plate, and VIN number</b>. Do not allow drivers to leave drivable vehicles at the shop unless authorized by CEI.</li>
                <li style="text-align: justify">When writing an estimate for CEI, write all visible damage. <b>Write unrelated damage separate and advise CEI. Please include tow and payout charges in your estimate</b></li>
                <li style="text-align: justify">Take clear photos of the damaged area(s). You will be required to upload an estimate and photos in order to complete the estimate.</li>
                <li style="text-align: justify"><b>Rentals.</b> Do not put drivers in a rental without authorization from CEI. Our Clients have specific parameters regarding rental vehicle sizes and insurance coverage parameters.</li>
                <li style="text-align: justify"><b>Appraisers.</b> If Client requires an independent appraiser, shop must obtain Agreed Price. It is the Repair Facility’s responsibility to review the estimate before agreeing to it.</li>
                <li style="text-align: justify"><b>Glass.</b> If glass requires replacement, please ensure that you are providing a minimum of cost plus 25.0% discount off of the NAGS list price. OEM glass must be utilized.</li>
                <li style="text-align: justify"><b>Suspension.</b> Do not use used or aftermarket suspension parts.</li>
                <li style="text-align: justify"><b>Decals / PDR.</b> Refer to instructions on page 1</li>
              </ul>
            </li>

          <%If (Me.ASAP_IsTeardownPriortySet() = False) Then%> 
            <li style="list-style-type:upper-alpha; margin-top:5px;">
              <b>TEARDOWNS AUTHORIZATION (CEI approved disassembly)</b>
              <ul>
                <li style="text-align: justify">CEI will issue authorization for teardown only with a teardown PO number prior to the Repair Purchase Order on many open estimates. <b><u>This does not represent approval for repairs!</u></b> A teardown is sometimes necessary in order to determine any hidden damage. Our clients are more understanding of supplements that occur during the teardown process than after they have committed to the repairs, and a purchase order has been issued.</li>
                <li style="text-align: justify">Once teardown is completed, call CEI with results. If there is no hidden damage a Purchase Order will be issued by CEI immediately. If additional damage is found, fleet approval must be obtained before actual repair is started. Once the Purchase Order is given after teardown, supplements will not be allowed on obvious items that should have been discovered during the teardown process.</li>
              </ul>
            </li>
          <%End If %>

            <li style="list-style-type:upper-alpha; margin-top:5px;">
              <b>PURCHASE ORDERS</b>
              <ul>
                <li style="text-align: justify"><b>Repairs are not to be started without an authentic <u>Repair</u> Purchase Order from CEI.</b> Do not accept approval from the driver, manager, or independent appraiser, or 3rd party insurance appraiser under <b><u>any</u></b> condition.</li>
                <li style="text-align: justify">Please advise CEI when a repair appointment is made and when a vehicle is left at shop.</li>
                <li style="text-align: justify">Notify CEI of any significant delays (i.e., back-ordered parts, labor issues, or driver no-shows.)</li>
                <li style="text-align: justify">Once vehicle is in for repairs and a <b>supplement is required</b>, stop the repair process. Call CEI with the supplement figure and fax paperwork to CEI. <b>Do not wait for the Appraiser to notify CEI.</b> This will delay the process.</li>
                <li style="text-align: justify"><b>Supplements must be submitted prior to vehicle completion.</b> Shop must review final figures before confirming.</li>
                <li style="text-align: justify">Take photos of damaged parts and provide invoices. CEI must provide this to the client in order for shops to be paid for supplements. This also enables our clients to subrogate against the responsible party when applicable.</li>
                <li style="text-align: justify">Acceptance of CEI PO's require the provider to maintain compliance with all Federal, State and Local confidentiality, privacy and environmental regulations.</li>
              </ul>
            </li>

            <li style="list-style-type:upper-alpha; margin-top:5px;">
              <b>COMPLETION OF REPAIRS</b>
              <ul>
                <li style="text-align: justify"><u>Upon completion of repairs, call CEI immediately to confirm final estimate amounts. Notify driver immediately. Ensure vehicle is clean prior to delivery.</u></li>
                <li style="text-align: justify">Have driver sign and date the final invoice.</li>
                <li style="text-align: justify">No vehicle is to be returned to a driver until all repairs have been completed unless approved by CEI.</li>
                <li style="text-align: justify">Contact the local rental company to advise them if a rental was left at your shop.</li>
                <li style="text-align: justify">Shop is responsible for collection of any deductibles. CEI will notify you of the deductible amount and remind you of the need to collect it. Very few of our clients have deductibles.</li>
              </ul>
            </li>

            <li style="list-style-type:upper-alpha; margin-top:5px;">
              <b>BILLING</b><br />
              The following paperwork is <b>REQUIRED</b> for proper payment.
              <ul>                  
                  <% If Me.RootOrgId = 25038 Then ' Chrysler Group LLC %>
                        <li style="text-align: justify">Once repairs are completed, fax initial estimate as well as final invoice to Mary Kovar with Chrysler claims at 248-754-1010. All paperwork must include the Chrysler J or Z claim number. Payment is included in the Weekly Dealer Billing Statement as an 057 parts credit.</li>                
                  <%Else%>
                        <li style="text-align: justify">Final bill/invoice with drivers signature reflecting TOTAL COST OF REPAIRS.</li>
                  <%End If%>
              </ul>
            </li>
          </ul>
        </font>
      </td>
    </tr>
    <tr>
      <td style="padding-top:15px;" valign="top" align="center"><font size=-3><b>PLEASE CONTACT CEI AT 1-800-234-3300 IF YOU NEED FURTHER CLARIFICATION.</b></font></td>
    </tr>
  </table>
</LW:PAGE>