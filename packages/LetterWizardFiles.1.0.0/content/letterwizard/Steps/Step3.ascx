<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Steps.Step3" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="Step3.ascx.vb" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Register TagPrefix="CC" Namespace="CEI.Application.Common.Web.UI.WebControls" Assembly="CEI.Application.Common.Web" %>
<style>

table { border-collapse: collapse; border-spacing: 0; }   
th, td { padding: 0px; }
th, td { vertical-align: top; }

</style>

<table BORDER="0"  STYLE="WIDTH:100%; HEIGHT:100%;">
    <tr>
        <td style="height:1px;">
            <table BORDER="0" >
                <tr>
                    <td STYLE="PADDING-RIGHT:5px; FONT-SIZE:10pt"><ASP:LABEL RUNAT="SERVER" ID="lblPageSize" /></td>
                    <td><ASP:DropDownList runat=server id="cmbPageSize" AutoPostBack=true /></td>
                </tr>
            </table>
        </td>
        <TD align="right" style="height:1px;">
            <table BORDER="0">
                <tr>
                    <td><CC:CEIButton style="margin-right:5px;" runat="server" id="bntEdit" /></td>
                    <td><CC:CEIButton style="margin-right:5px;" runat="server" id="bntUpdate" /></td>
                    <td><CC:CEIButton runat="server" id="bntPrint" /></td>
                    <td runat="server" id="tdSaveHTML" visible="false"><CC:CEIButton style="margin-left:5px;" runat="server" id="bntSaveHTML" /></td>
                </tr>
            </table>
        </TD>
    </tr>
    <tr>
      <td Colspan=2 style="padding-top:10px;">
        <ASP:PANEL tabindex=1 runat=server id="phModule" style="padding:10px; border:solid 1px #000000; overflow-y:scroll; width:100%; height:100%;"/>
      </td>
    </tr>
</table>

<SCRIPT>
  var popup = null;
  function OnPrint() {
    if (popup != null) {
        popup.close();
        popup = null
    }
    popup = window.open('about:blank','Print',"width=800,height=600,status=no,toolbar=no,menubar=no,location=no");
    setTimeout('PrintMe()',1000);
  }
  
  function PrintMe() {
    if (popup != null) {
        if (popup.document.readyState != 'complete') {
            setTimeout('PrintMe()',1000);
        } else {
            popup.document.body.innerHTML = '<HEAD><TITLE>Print Letter</TITLE></HEAD><BODY>' + document.getElementById('LetterWizard_Step_phModule').innerHTML + '</BODY>'
            popup.focus();
            popup.print();
        }
    }
  }
  
</SCRIPT>
