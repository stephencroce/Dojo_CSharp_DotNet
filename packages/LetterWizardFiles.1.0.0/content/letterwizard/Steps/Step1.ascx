<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Steps.Step1" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="Step1.ascx.vb" %>
<%@ Register TagPrefix="CC" Namespace="CEI.Application.Common.Web.UI.WebControls" Assembly="CEI.Application.Common.Web" %>
    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="100%" HEIGHT="100%">
        <TR>
            <TD style="padding-top:10px;">
                <TABLE border=0 cellpadding=0 cellspacing=0>
                    <TR>
                        <TD style="PADDING-RIGHT:5px; FONT-SIZE:10pt"><ASP:LABEL runat=server id="lblTemplate" /></TD>
                        <TD width="100%"><ASP:DROPDOWNLIST runat=server id="cmbTemplates" AutoPostBack="true" style="FONT-SIZE:10pt" width="100%" /></TD>
                        <ASP:PLACEHOLDER ID="phLanguage" runat=server visible="false">
                            <TD style="PADDING-RIGHT:5px; PADDING-LEFT:5px; FONT-SIZE:10pt; WIDTH:1px;"><NOBR><ASP:LABEL runat=server id="lblLanguage" />:</NOBR></TD>
                            <TD style="WIDTH:1px;"><ASP:DROPDOWNLIST runat=server id="cmbLanguages" AutoPostBack="true" style="FONT-SIZE:10pt" width="200px" /></TD>
                        </ASP:PLACEHOLDER>
                        <TD style="PADDING-LEFT:5px"><CC:CEIBUTTON runat=SERVER id="bntPreview" /></TD>
                    </TR>
                </TABLE>
            </TD>
        </TR>
        <TR runat=server id="trDevelopment" visible=false>
            <TD style="padding-top:10px;">
                <TABLE border=0 cellpadding=3 cellspacing=0 style="border:solid 1px #CC3333; width:100%;">
                    <TR>
                        <TD style="FONT-SIZE:10pt;"><nobr>Modify Template Path:</nobr></td>
                        <TD style="padding-left:5px; width:100%;"><asp:textbox runat=server id="txtDevPath" style="width:100%;"/></TD>
                        <TD style="padding-left:5px;"><ASP:Button runat=server id="bntDevPath" text="update"/></TD>
                    </TR>
                </TABLE>
            </TD>
        </TR>
        <TR>
            <TD style="padding-top:10px;">
                <TABLE BORDER=0 cellpadding=0 cellspacing=0 width="100%">
                    <TR>
                        <TD>
                            <TABLE border=0 cellpadding=0 cellspacing=0>
                                <TR>
                                    <TD style="PADDING-RIGHT:2px; FONT-SIZE:10pt"><ASP:LABEL runat=server id="lblDescription"></ASP:LABEL></TD>
                                    <TD style="FONT-SIZE:10pt"><ASP:LABEL runat=server id="lblDescriptionResource"></ASP:LABEL></TD>
                                </TR>
                            </TABLE>
                        </TD>
                        <TD>
                            <TABLE border=0 cellpadding=0 cellspacing=0>
                                <TR>
                                    <TD style="PADDING-RIGHT:2px; FONT-SIZE:10pt"><ASP:LABEL runat=server id="lblSource"></ASP:LABEL></TD>
                                    <TD style="FONT-SIZE:10pt"><ASP:LABEL runat=server id="lblSourceResource"></ASP:LABEL></TD>
                                </TR>
                            </TABLE>
                        </TD>               
                    </TR>
                </TABLE>
            </TD>
        </TR>
        <TR>
          <TD width="100%" height="100%" style="padding-top:10px;">
            <ASP:PANEL runat=server id="phModule" style="width:100%; height:100%; border:solid 1px #999999; overflow-Y: scroll;"></ASP:PANEL>          
          </TD>
        </TR>
    </TABLE>

