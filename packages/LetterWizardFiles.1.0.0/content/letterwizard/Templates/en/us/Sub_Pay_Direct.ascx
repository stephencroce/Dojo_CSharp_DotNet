<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

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
              4850 Street Road, Suite 200<br/>
              Trevose, PA 19053
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Phone: 1-800-234-3300<BR/>
              Fax: 1-215-485-4653<BR/>
              Photos: fleetemail@ceinetwork.com
            </td>
          </tr>
        </table>
      </div>

    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <td align="right" style=padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif"%>" /></td>
            </TR>
        </TABLE>
    </DIV>

    <!--// Date / To Address //-->
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td class="TextBold" style="padding-bottom:10px;"><%=Me.Date%></td>
            </tr>
            <tr>
                <td class="TextNormal"><%=Me.ContactCompanyName%><br/><%=Me.ContactDisplayName%><br/><%=Me.ContactAddress%></td>
            </tr>
        </table> 
    </div>
    
    <!--// Client Information //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0">
            <TR>
                <TD valign="top" CLASS="TextNormal" style="width:75px;">RE:</TD>
                <TD valign="top" CLASS="TextNormal">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                      <TD CLASS="TextNormal" align=right style="padding-right:25px;">Our Client:</TD>
                      <TD CLASS="TextNormal"><%=Me.ClientName%></TD>
                    </TR>
                    <TR>
                      <TD CLASS="TextNormal" align=right style="padding-right:25px;">Our Driver:</TD>
                      <TD CLASS="TextNormal"><%=Me.DriverName%></TD>
                    </TR>
                    <TR>
                      <TD CLASS="TextNormal" align=right style="padding-right:25px;">Our File #:</TD>
                      <TD CLASS="TextNormal"><%=Me.ClaimNumber%></TD>
                    </TR>
                    <TR>
                      <TD CLASS="TextNormal" align=right style="padding-right:25px;">Date of Loss:</TD>
                      <TD CLASS="TextNormal"><%=Me.DateOfLoss%></TD>
                    </TR>
                    <TR>
                      <TD CLASS="TextBold" align=right style="padding-right:25px;">Location of Loss:</TD>
                      <TD CLASS="TextBold"><%=Me.LocationOfLoss%></TD>
                    </TR>
                    <TR>
                      <TD CLASS="TextBold" align=right style="padding-right:25px;">Loss Amount:</TD>
                      <TD CLASS="TextBold"><%=Me.LossAmount%></TD>
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
                <TD CLASS="TextBold" style="padding-bottom:10px;">Dear <%=Me.ContactDisplayName%>:</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                
CEI is writing you in regards to the above mentioned loss in which a vehicle that you either owned and/or operated was involved in an accident with <%=Me.DriverName%> who is an employee of <%=Me.ClientName%>.<p />
You are receiving this letter for one of the following reasons:<p />
<ul>
  <li>You have agreed to pay for our client’s damage personally instead of turning a claim in to your insurance carrier.</li>
  <li>We have unsuccessfully attempted to contact you to obtain your insurance information that was in affect at the time of loss and therefore are billing you direct for our client’s damages</li>
  <li>Or you have agreed to pay for our client’s damages because you were not insured at the time of the loss.</li>
</ul>
Please send a check or money order in the above listed “<b>Loss Amount</b>” payable to “<b><%=Me.PayableTo()%></b>” and mail it to the above listed address.  If you wish to pay by credit card, you must call CEI to process your payment with our Financial Administration department.<p />
                </TD>
            </TR>
        </TABLE>
    </DIV>
    
    <!--// Signature //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD CLASS="TextNormal" style="padding-bottom:10px;">Sincerely,</TD>
            </TR>
            <TR>
                <TD CLASS="TextNormal">Team 5</TD>
            </TR>
            <TR>
                <TD CLASS="TextNormal">CEI Services</TD>
            </TR>
            <TR>
                <TD CLASS="TextNormal">866.894.0386, Opt. #1</TD>
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
          <TD CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/en/us/Sub_Pay_Direct</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Page 1 of 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>