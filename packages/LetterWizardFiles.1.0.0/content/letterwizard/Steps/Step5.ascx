
<%@ Control Language="vb" ValidateRequestMode="Disabled" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Steps.Step5" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="Step5.ascx.vb" %>
<%@ Register TagPrefix="CC" Namespace="CEI.Application.Common.Web.UI.WebControls" Assembly="CEI.Application.Common.Web" %>
<STYLE>
  .Head {
    font-weight:bold;
    font-size:12pt;
    padding-bottom:10px;
  }
  .Label {
    margin-left:10px;
    padding-right:5px;
    font-size:10pt;
    text-align:right;
    white-space:nowrap;
    padding-top:1px;
  }
  .Data {
    margin-top:2px;
    font-size:10pt;
    padding:1px;
    border:solid 1px #999999;
    width:100%;
  }
  .Border {
    width:5px;
    height:5px;
    background-repeat:no-repeat ;
  }
</STYLE>
<ASP:PLACEHOLDER runat=server id="phMain" visible=true>
    <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 style="width:100%;">
        <TR>
            <TD valign=top>
	            <TABLE cellSpacing="0" cellPadding="0" border="0" style="">
                    <TBODY>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-top:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                        <TR>
                            <TD class="MC" colSpan="3" style="border-left:solid 1px #C3BDB7; border-right:solid 1px #C3BDB7; padding-left:5px; padding-right:5px;">
                                <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=1>
                                    <TR>
                                        <TD class="Head" colspan=2><ASP:LABEL runat=server id="lblContact" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblName" /></TD>
                                        <TD class="Data" ><ASP:LABEL runat=server id="txtName" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblCompany" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtCompany" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblAddress" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtAddress" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right colspan=2 style="padding-top:5px;"><CC:CEIBUTTON runat=server id="bntContact" /></TD>
                                    </TR>
                                </TABLE>
                            </TD>
                        </TR>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-bottom:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD valign=top>
                <TABLE cellSpacing="0" cellPadding="0" border="0" style="margin-left:10px;">
                    <TBODY>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-top:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                        <TR>
                            <TD class="MC" colSpan="3" style="border-left:solid 1px #C3BDB7; border-right:solid 1px #C3BDB7; padding-left:5px; padding-right:5px;">
                                <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=1>
                                    <TR>
                                        <TD class="Head" colspan="2"><ASP:LABEL runat=server id="lblRecipient" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblEmail" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtEmail" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblFax" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtFax" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right colspan=2 style="padding-top:5px;"><CC:CEIBUTTON runat=server id="bntRecipient"/></TD>
                                    </TR>
                                </TABLE>
                            </TD>
                        </TR>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-bottom:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                    </TBODY>
                </TABLE>
            </TD>
        </TR>
        <TR>
            <TD COLSPAN="2">
                <TABLE cellSpacing="0" cellPadding="0" border="0" style="margin-top:10px;">
                    <TBODY>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-top:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/TR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                        <TR>
                            <TD class="MC" colSpan="3" style="border-left:solid 1px #C3BDB7; border-right:solid 1px #C3BDB7; padding-left:5px; padding-right:5px;">
                                <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=1>
                                    <TR>
                                        <TD class="Head" colspan=2><ASP:LABEL runat=server id="lblLetter" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblTemplate" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtTemplate" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblSubject" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtSubject" /></TD>
                                    </TR>
                                    <TR>
                                        <TD class="Label" valign=top><ASP:LABEL runat=server id="lblComment" /></TD>
                                        <TD class="Data"><ASP:LABEL runat=server id="txtComment" /></TD>
                                    </TR>
                                    <TR>
                                        <TD align=right colspan=2 style="padding-top:5px;"><CC:CEIBUTTON runat=server id="bntLetter"/></TD>
                                    </TR>
                                </TABLE>
                            </TD>
                        </TR>
                        <TR>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BL.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                            <TD STYLE="border-bottom:solid 1px #C3BDB7; width:100%;"><IMG height="4" src="Images/shim.gif" width="5"></TD>
                            <TD CLASS="Border" STYLE="background-image:url(Images/BR.gif);"><IMG height="5" src="Images/shim.gif" width="5"></TD>
                        </TR>
                    </TBODY>
                </TABLE>
            </TD>
        </TR>
    </TABLE>
    <ASP:Panel runat=server id="phTemplate"/>
</ASP:PLACEHOLDER>

<ASP:PLACEHOLDER runat=server id="phThanks" visible=false>
    <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 style="width:100%; height:100%;">
      <TR>
        <TD align=center valign=center>
          <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD style="border:solid 1px #000000;">
                <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
                  <TR>
                    <TD style="color:white; padding-left:3px; border-bottom:solid 1px #000000; font-weight:bold; font-size:9pt; FILTER:progid:DXImageTransform.Microsoft.Gradient(StartColorStr='maroon',EndColorStr=#FFFFFF,GradientType=1);"><ASP:LABEL runat=server id="lblThanksTitle"/></TD>
                  </TR>
                  <TR>
                    <TD style="font-size:8pt; padding:5px;" colspan=2><ASP:LABEL runat=server id="lblThanksMessage"/></TD>
                  </TR>
                  <TR>
                    <TD style="padding-top:5px; padding-bottom:5px;" colspan=2 align="center"><CC:CEIButton runat=server id="bntThanks"/></TD>
                  </TR>
                </TABLE>
              </TD>
            </TR>
          </TABLE>
        </TD>
      </TR>
    </TABLE>
</ASP:PLACEHOLDER>