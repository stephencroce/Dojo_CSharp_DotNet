<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// PAGE 1 of 3 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">

    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo" /></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Date / To Address //-->
    <DIV> 
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;"><ASP:LABEL runat=server id="lblDate" /></TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDisplayCompany" /><br><ASP:LABEL runat=server id="lblDisplayName" /><br><ASP:LABEL runat=server id="lblAddress" /></TD>
            </TR>                 
        </TABLE>
    </DIV>
    
    <!--// Date / To Address //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0">
            <TR>
                <TD valign="top" style="font:normal 10pt Sans-Serif; width:75px;">RE:</TD>
                <TD valign="top" style="font:normal 10pt Sans-Serif;">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our Client:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblOrg1" /></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our Driver:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDriver1" /></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our File #:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblClaim1" /></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Date of Loss:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDOL" /></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Vehicle:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblVehicle" /><%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Loss Amount:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblLossAmount" /></TD>
                    </TR>   
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Location of Loss:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><%=Me.Helper.Claim.AccidentDescription.Address.City.ToString & ", " & Me.Helper.Claim.AccidentDescription.Address.StateAbbreviation.ToString%></TD>
                    </TR> 
                  </TABLE>
                </TD>
            </TR>                 
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;">Dear <ASP:LABEL runat=server id="lblContact" />:</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                    We are the Subrogation Firm for the above client who has sustained property damage as a result of an accident on the above-mentioned date.<p>
                    If you carry liability insurance, please complete the information below and return to <%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%> immediately.
                </TD>
            </TR>                 
        </TABLE>
    </DIV>

    <!--// Input Fields //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; width:50%;">YOUR INSURANCE COMPANY
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
                </TD>
                <TD style="font:bold 10pt Sans-Serif; width:50%; padding-left:5px;">CLAIM NUMBER
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; font:bold 11pt Sans-Serif">&nbsp;</TD></TR></TABLE>
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Input Fields //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign="top" style="font:bold 10pt Sans-Serif; width:50%;">ADDRESS / AGENT'S NAME AND PHONE
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; height:75px;">&nbsp;</TD></TR></TABLE>
                </TD>
                <TD valign="top" style="font:bold 10pt Sans-Serif; width:50%; padding-left:5px;">POLICY NUMBER
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
                </TD>
            </TR> 
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                    <p>If you were uninsured on the date of the accident, <%=GetProperCEIName(Me.OrgCountryId, "CEI Services")%> expects to hear from you immediately about a payment plan and/or payment in full.</p>
                    <p>If you would like to issue payment via credit card, please contact a  <%=GetProperCEIName(Me.OrgCountryId)%> Loss Recovery representative at the toll-free number listed below.</p>
                    <LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" />
                </TD>
            </TR>                 
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif; padding-bottom:10px;">Sincerely,</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Team 5</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><%=GetProperCEIName(Me.OrgCountryId, "CEI Services")%></TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">866.894.0386 option 2</TD>
            </TR>            
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><I>PLEASE NOTE: THIS IS AN ATTEMPT TO COLLECT A DEBT. ANY INFORMATION<BR>OBTAINED WILL BE USED SOLELY FOR THAT PURPOSE.</I></TD>
            </TR>                 
        </TABLE>
    </DIV>
</LW:PAGE>