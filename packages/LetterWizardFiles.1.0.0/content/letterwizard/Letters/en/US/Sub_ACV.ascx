<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// PAGE 1 of 3 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Date / To Address //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;"><ASP:LABEL runat=server id="lblDate"></ASP:LABEL></TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDisplayCompany" /><br><ASP:LABEL runat=server id="lblDisplayName" /><br><ASP:LABEL runat=server id="lblAddress"></ASP:LABEL></TD>
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
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblOrg1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our Driver:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDriver1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our File #:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblClaim1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Your Insured:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblInsured"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Your Claim #:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblInsuredClaim"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Date of Loss:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDOL"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Loss Amount:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblLossAmount"></ASP:LABEL></TD>
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
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;">Dear <ASP:LABEL runat=server id="lblContact"></ASP:LABEL>:</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                    As Subrogees for the above-named client, we are seeking damages in the above amount, which is broken down as follows:<p>
                    
                    <ASP:LABEL runat=server id="lblRequestedData"></ASP:LABEL><P>
                    
                    These damages were caused by the sole negligent operation of a motor vehicle owned and /or operated by your insured. Please fine the enclosed documents supporting our claim. We are seeking full reimbursement of our client's expenses, as their vehicles are self-insured for collision.<P>
                    <LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /><P>
                    <i><u>Please make draft payable to "<%=Me.PayableTo()%>".</u></i>
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
                <TD style="font:normal 10pt Sans-Serif;">CEI Services</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">215.364.8253 option 2</TD>
            </TR>            
        </TABLE>
    </DIV>
</LW:PAGE>

<script runat="server">
  Sub OnUpdate(ByVal sender As Object, ByVal e As EventArgs)
 
  End Sub

  Sub OnEdit(ByVal sender As Object, ByVal e As EventArgs)
 
  End Sub
    
  Private Sub PageLoad() Handles Me.Load

  End Sub
</script>
