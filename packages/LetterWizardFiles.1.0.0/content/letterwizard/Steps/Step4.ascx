
<%@ Control Language="vb" ValidateRequestMode="Disabled" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Steps.Step4" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="Step4.ascx.vb" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Register TagPrefix="CC" Namespace="CEI.Application.Common.Web.UI.WebControls" Assembly="CEI.Application.Common.Web" %>
    <STYLE>
      .Border {
        width:5px;
        height:5px;
        background-repeat:no-repeat ;
      }
    </STYLE>
    <ASP:LABEL RUNAT=SERVER ID=lblRecipients style="font-size:10pt"/><BR>
    
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top">
          <TABLE cellSpacing="0" cellPadding="0" border="0" style="width:300px; margin-top:10px; margin-left:10px;">
            <TBODY>
                <TR>
                    <TD CLASS="Border" STYLE="background-image:url(Images/TL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                    <TD STYLE="border-top:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                    <TD CLASS="Border" STYLE="background-image:url(Images/TR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                </TR>
                <TR>
                    <TD class="MC" colSpan="3" style="border-left:solid 1px #C3BDB7; border-right:solid 1px #C3BDB7; padding-left:5px; padding-right:0px;">
                        <div style="width:300px; height:450px; overflow-Y:scroll;">
                          <LW:Recipient RUNAT="SERVER" ID="cmbEmail" OnItemChanged="ItemsChanged()" />
                          <LW:Recipient RUNAT="SERVER" ID="cmbFax" OnItemChanged="ItemsChanged()" />
                        </div>
                    </TD>
                </TR>
                <TR>
                    <TD CLASS="Border" STYLE="background-image:url(Images/BL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                    <TD STYLE="border-bottom:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                    <TD CLASS="Border" STYLE="background-image:url(Images/BR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                </TR>
            </TBODY>
          </TABLE>
        </td>
        <td valign="top">
          <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 style="margin-left:10px;">
            <TR>
              <TD valign=top align=right style="padding-right:5px; font-size:10pt; padding-top:4px;"><ASP:LABEL RUNAT=SERVER ID=lblSubject></ASP:LABEL></TD>
              <TD valign=top><ASP:TEXTBOX RUNAT=SERVER ID=txtSubject style="width:335px; font-size:10pt;"></ASP:TEXTBOX></TD>
            </TR>
            <TR>
              <TD valign=top align=right style="padding-right:5px; font-size:10pt; padding-top:4px;"><ASP:LABEL RUNAT=SERVER ID=lblComments></ASP:LABEL></TD>
              <TD valign=top><ASP:TEXTBOX RUNAT=SERVER ID=txtComments TextMode=MultiLine style="width:335px; height:75px; font-size:10pt;"></ASP:TEXTBOX></TD>
            </TR>
          </TABLE>
        </td>
      </tr>
    </table>
    <SCRIPT>
      function ItemsChanged() {
        var IsNotValid = true;

        var Emails = document.getElementById('LetterWizard:Step:cmbEmail:HTC').Items
        var Faxes = document.getElementById('LetterWizard:Step:cmbFax:HTC').Items

        if (Emails != null) {
          for (var i = 0; i < Emails.length; i++) {
            if (Emails[i]['Selected'] == true) { IsNotValid = false }
          }
        }

        if (Faxes != null) {
          for (var i = 0; i < Faxes.length; i++) {
            if (Faxes[i]['Selected'] == true) { IsNotValid = false }
          }
        }
        
        if (document.getElementById('LetterWizard:Step:bntNext').disabled != IsNotValid) {document.getElementById('LetterWizard:Step:bntNext').disabled = IsNotValid}
      }
    </SCRIPT>