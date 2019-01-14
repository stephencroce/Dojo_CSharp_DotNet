<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Steps.Step2" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="Step2.ascx.vb" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Register TagPrefix="Dialogs" Namespace="CEI.Application.Common.Web.UI.WebControls.Dialogs" Assembly="CEI.Application.Common.Web" %>
<%@ Register TagPrefix="HTM" Namespace="System.Web.UI.HtmlControls" Assembly="System.Web" %>
<%@ Register TagPrefix="CC" Namespace="CEI.Application.Common.Web.UI.WebControls" Assembly="CEI.Application.Common.Web" %>
<TABLE BORDER="0" CELLPADDING="0" CCELLSPACING="0" STYLE="WIDTH:100%; HEIGHT:100%">
    <TR>
        <TD VALIGN="top" style="width:1px;">
            <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
                <TR>
                    <TD STYLE="PADDING-RIGHT:5px; FONT-SIZE:10pt"><ASP:LABEL RUNAT="SERVER" ID="lblContacts" /></TD>
                </TR>
                <TR>
                    <TD style="padding-top:10px;"><LW:MultiListBox runat="server" id="cmbContacts" width="250px" height="400px"/></TD>
                </TR>
            </TABLE>
        </TD>
        <TD VALIGN="top" style="PADDING-LEFT:20px">
            <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" style="PADDING-TOP:10px">
                <TR>
                    <TD VALIGN="top" align="right" STYLE="PADDING-RIGHT:5px; FONT-SIZE:10pt; PADDING-TOP:13px"><Dialogs:NameDialogWrapper runat=server id="dlgName" value="asdf" TextDisplayControlID="txtName"/></TD>
                    <TD><ASP:TEXTBOX RUNAT="SERVER" ID="txtName" WIDTH="100%" /></TD>
                </TR>
                <TR>
                    <TD VALIGN="top" align="right" STYLE="PADDING-RIGHT:5px;FONT-SIZE:10pt;PADDING-TOP:13px"><ASP:LABEL RUNAT="SERVER" ID="lblCompany" /></TD>
                    <TD><ASP:TEXTBOX RUNAT="SERVER" ID="txtCompany" WIDTH="100%" /></TD>
                </TR>
                <TR>
                    <TD VALIGN="top" align="right" STYLE="PADDING-RIGHT:5px;FONT-SIZE:10pt;PADDING-TOP:13px"><Dialogs:AddressDialogWrapper runat=server id="dlgAddress" value="asdf" TextDisplayControlID="txtAddress"/></TD>
                    <TD><ASP:TEXTBOX RUNAT="SERVER" ID="txtAddress" TEXTMODE="MULTILINE" ROWS="4" COLUMNS="30" /></TD>
                </TR>
                <TR>
                    <TD ALIGN="right" COLSPAN="2">
                        <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
                            <TR>
                                <TD><CC:CEIBUTTON style="margin-right:5px;" RUNAT="SERVER" ID="bntNew" /></TD>
                                <TD><CC:CEIBUTTON RUNAT="SERVER" ID="bntEdit" /></TD>
                                <TD><CC:CEIBUTTON style="margin-right:5px;" RUNAT="SERVER" ID="bntAdd" /></TD>
                                <TD><CC:CEIBUTTON style="margin-right:5px;" RUNAT="SERVER" ID="bntUpdate" /></TD>
                                <TD><CC:CEIBUTTON RUNAT="SERVER" ID="bntCancelAddEdit" /></TD>
                            </TR>
                        </TABLE>
                    </TD>
                </TR>
                <TR>
                    <TD ALIGN="left" COLSPAN="2">
                        <asp:Label Runat="server" ID="lblMessage" />
                    </TD>
                </TR>
            </TABLE>
        </TD>
    </TR>
</TABLE>

<SCRIPT>
    function ObjClick(e) {
        document.forms('frmMain').submit();
    }
</SCRIPT>