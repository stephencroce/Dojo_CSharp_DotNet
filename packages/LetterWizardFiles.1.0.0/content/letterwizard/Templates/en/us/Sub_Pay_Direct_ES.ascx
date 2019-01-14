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
                <TD valign="top" style="font:normal 10pt Sans-Serif; width:75px;">Referencia:</TD>
                <TD valign="top" style="font:normal 10pt Sans-Serif;">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Nuestro Cliente:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblOrg1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Nuestro Chofer:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDriver1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Nuestro # Querella:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblClaim1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Dia de Pierdida:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDOL"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Total:</TD>
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
                    Estoy contactandome en referencia de el accidente mencionado, en que tu vehicule estaba involucrado en el accidente con <ASP:LABEL runat=server id="lblDriver2" /> empleada de la compania <ASP:LABEL runat=server id="lblOrg2" />.<p>
                    Por nuestra conversacionpor telefono tu estas de acuerdo de manejar el dano de el vehiculo de compania personalmente por la contidad en la primera perte de esta certa. Por favor cuando nos envie pago haga su checke o money order y ponga el numero de querella.<P>
                    <ASP:TEXTBOX runat=server id=txtComments AutoPostBack="False" width="100%" height="100px" /><P>
                    <I><u>Porfavor haga el checke a nombre de "<%=Me.PayableTo()%>".</u></I>
                </TD>
            </TR>
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif; padding-bottom:10px;">Sinceramente,</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Team 5</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">CEI Services</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">866.894.0386</TD>
            </TR>            
        </TABLE>
    </DIV>
</LW:PAGE>