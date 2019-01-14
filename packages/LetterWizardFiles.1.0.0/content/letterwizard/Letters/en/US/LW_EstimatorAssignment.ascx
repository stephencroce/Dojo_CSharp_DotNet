<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_EstimatorAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// PAGE 1 of 3 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="3">
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
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Fleet Services Claim Assignment</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Assigned To //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Assigned To:</TD>
            </TR>            
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Company /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Address /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Phone /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Name /></TD>
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
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Customer:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Branch:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch /></TD>
                        </TR>  
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Claim #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number /></TD>
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
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></TD>
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

    <!--// Incident Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Incident Information</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Date of Loss:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_DOL" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Damage Description:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_DmgDescription" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Code:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Code" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Type:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Type" /></TD>
                        </TR>         
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Primary Damage:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_PDmg" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Additional Damage:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_ADmg" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Vehicle Drivable:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_Drivable" /></TD>
                        </TR>                        
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Vehicle Location//-->
    <DIV style="margin-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" style="width:100%;">
            <TR runat=server id="trInShop1">
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif;">Vehicle Location</TD>
            </TR>
            <TR runat=server id="trNotInShop1">
                <TD style="border-bottom:solid 1px #000000; font:bold 10pt Sans-Serif; white-space: nowrap">Vehicle Location:</TD>
                <TD style="border-bottom:solid 1px #000000; padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif; white-space: nowrap">With Driver/Claim Contact</TD>
            </TR>
            <TR runat=server id="trNotInShop2">
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif; padding-top:10px;">Secure Agreed Price</TD>
            </TR>                                
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Name /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Address /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;">
                  <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
                    <TR>
                      <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Phone:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Phone /></TD>
                    </TR>
                    <TR>
                      <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Fax:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Fax /></TD>
                    </TR>
                  </TABLE>
                </TD>
            </TR>
        </TABLE>
    </DIV>

</LW:PAGE>

<!--// PAGE 2 of 3 //-->
<LW:PAGE runat=server id="PG_2" pagenumber="2" pagecount="3">
    <!--// TITLE //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Fleet Services Appraisal Guidelines</U></TD>
            </TR>
            <TR>
                <TD align=CENTER style="font:normal 12pt Sans-Serif;"><I>The following guidelines <U>must</U> be adhered to <U>ensure payment</U>.</I></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// PROCEDURES //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                    <B>Estimate Procedures:</B>
                    <UL>
                        <LI>Appraiser must write an Estimate independent of the shop.</LI>
                        <LI><%= CompletionInstructions%></LI>
                        <LI>Please obtain current mileage.</LI>
                        <LI>New OEM parts only with exception of Radiators, A/C Condensers and Bumpers (without jeopardizing quality or safety). <B>Do not write LKQ or Clips</B></LI>
                        <LI>No Betterments.</LI>
                        <LI>Negotiate in good faith to obtain an Agreed Price with the shop designated by CEI, and provide copy of estimate to shop.</LI>
                        <LI>Note any Prior/Unrelated Damage on the Estimate (<B>Do not write estimate</B>.)</LI>
                        <LI>List <B>all</B> open items on the estimate. <B>(Affected area and approximate cost)</B>.</LI>
                        <LI>List the <B>Shop Name, Address, Phone Number and Contact</B> in which the A/P was secured on the Estimate.</LI>
                        <LI>All Towing, Payout and Taxes should be included in the Estimate.</LI>
                        <LI>E-mail photos: fleetappraiseremail@ceinetwork.com.</LI>
                        <LI>Fax Appraisal: 215-953-4651.</LI>                        
                        <LI>Note <B>location</B> of inspection on Estimate.</LI>
                        <LI>Leave Business Card if inspection is completed without the driver present.</LI>
                        <LI>Write estimate at shop's labor rate unless it is inconsistent with area rates.</LI>
                        <LI>We only require an estimate and photos - no ACV or Salvage bids, unless requested.</LI>
                        <LI>PDR can be utilized whenever this process represents the most efficient and cost effective method.</LI>
                        <LI>Do not give copy of estimate to driver/claim contact.</LI>
                        <% If Me.RootOrgId = 25539 And False Then ' Donlen %>
                          <li style="font:normal 10pt Sans-Serif;">Please do not write for aftermarket sheet metal.</li>    
                        <%End If%>
                    </UL>

                    <B>Status/Estimate Procedures</B>
                    <UL>
                        <LI><B>Drivable</B>: Provide 48-hour status.</LI>
                        <LI><B>Not-drivable</B>: Estimate with coversheet to be received within 48 hours of receipt of assignment.</LI>
                    </UL>

                    <B>Glass Procedures</B>
                    <UL>
                        <LI>Glass Guidelines</LI>
                        <UL>
                            <LI>Windshield minimum discount is 17% off NAGS + 1 hour to install.</LI>
                            <LI>Tempered minimum discount is 17% off NAGS + 1 hour to install</LI>
                        </UL>
                    </UL>
                    
                    <B>Additional Charges</B>
                    <UL>
                        <LI><B>All additional costs must be approved by CEI <U>prior to vehicle inspection</U></B>. Please call CEI for an Authorization Number to be included on the invoice.</LI>
                    </UL>
                    
                </TD>
            </TR>
        </TABLE>
    </DIV>
</LW:PAGE>

<!--// PAGE 3 of 3 //-->
<LW:PAGE runat=server id="PG_3" pagenumber="3" pagecount="3">
    <!--// Title //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Appraiser Estimate</U></TD>
        </TR>
        <TR>
          <TD align=CENTER style="font:normal 14pt Sans-Serif;">Fleet Services Cover Sheet (<b>must return with estimate</b>)</TD>
        </TR>   
        <TR>
          <TD align=RIGHT style="font:bold 14pt Sans-Serif; padding-right:10px;"><asp:Label Runat=server ID="lblClaimFinNum"/></TD>
        </TR> 
      </TABLE>
    </DIV>
    
    <!--// Estimate Contact Information //-->
    <DIV style="margin-top:20px;">
      <TABLE border="0" cellpadding="0" cellspacing="0">
        <TR>
          <TD width="200px" style="font:bold 10pt Sans-Serif;">Claim ID:</TD>
          <TD width="200px" style="font:bold 10pt Sans-Serif; padding:3px; border:solid 1px #000000;"><ASP:LABEL runat=server id="Estimate_Claim_Number" /></TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif; padding-top:10px;">Customer:</TD>
          <TD width="200px" style="font:normal 10pt Sans-Serif; padding-top:10px;"><ASP:LABEL runat=server id="Estimate_Customer" /></TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Branch:</TD>
          <TD width="200px" style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="Estimate_Branch" /></TD>
        </TR>
        <TR>
          <TD width="200px" valign=top style="font:normal 10pt Sans-Serif;">From:</TD>
          <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;">
            <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
              <TR>
                <TD colspan=2 style="padding-right:3px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="Estimate_Name" /><br><ASP:LABEL runat=server id="Estimate_Address" /></TD>
              </TR>
              <TR>
                <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Phone:</TD>
                <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="Estimate_Phone" /></TD>
              </TR>
              <TR>
                <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Fax:</TD>
                <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="Estimate_Fax" /></TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
      </TABLE>
    </DIV>
    
    <DIV style="margin-top:20px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width=100%>
        <TR>
          <TD style="font:bold 10pt Sans-Serif;"><U>Please complete the Q&amp;A below and fax to 1-215-485-4651 with a copy of the estimate</U></TD>
        </TR>
      </TABLE>
    </DIV>

    <DIV style="margin-top:20px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Estimator Name:</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Appraisal Date:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">/</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">/</TD>                
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">(mm/dd/yy)</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Estimate Amount:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="font:normal 14pt Sans-Serif; padding-right:5px;">$</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">.</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Frame Hours:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">.</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Repair Shop:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; font:bold 10pt Sans-Serif;"><ASP:LABEL RUNAT=SERVER ID="Lbl_Repair_Shop" /></TD></TR></TABLE>
          </TD>
        </TR>   
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Agreed Price?:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">Yes</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">No</TD>
              </TR>
            </TABLE>
          </TD>
        </TR> 
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">With Whom?:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; font:bold 10pt Sans-Serif;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>                     
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Opens?:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">Yes</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">No</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">If yes, Open Amt:</TD>
          <TD style="font:normal 14pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0>
              <TR>
                <TD style="font:normal 14pt Sans-Serif; padding-right:5px;">$</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 14pt Sans-Serif; padding-right:5px; padding-left:5px;">.</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD><TD style="font:normal 3pt Sans-Serif; padding-right:3px;">&nbsp;</TD>
                <TD style="width:25px; height:25px; border:solid 1px #000000;">&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>         
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Open Items:</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Shop Estimate Diffrence (if any):</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">Additional Comments:</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD width="200px" style="font:normal 10pt Sans-Serif;">&nbsp;</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD rowspan=3 width="200px" style="font:normal 10pt Sans-Serif;">Decals Replacement Required?:<br>If yes, panels involved:<br>Specific wording and color of all decals needed (name and numbers)</TD>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">(company logo) ( YES / NO )</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>
        <TR>
          <TD style="font:normal 10pt Sans-Serif; padding-top:5px;">
            <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
          </TD>
        </TR>   
      </TABLE>
    </DIV>
</LW:PAGE>