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
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblClaim"></ASP:LABEL></TD>
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
                    Nosotros estamos representando nuestro cliente que recibio danos en el accidente que ocurio el dia mencionado en la primera perte de esta carta.<P>
                    
                    Si udsted tiene segruo, porfavor completa la informaccion en la parte de abajo de esta carta y envielo lo mas pronto possibe a CEI Services.
                </TD>
            </TR>                 
        </TABLE>
    </DIV>

    <!--// Input Fields //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; width:50%;">Tu compania de suguro
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000;">&nbsp;</TD></TR></TABLE>
                </TD>
                <TD style="font:bold 10pt Sans-Serif; width:50%; padding-left:5px;">numero de reclamo
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; font:bold 11pt Sans-Serif">&nbsp;</TD></TR></TABLE>
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Input Fields //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign="top" style="font:bold 10pt Sans-Serif; width:50%;">nombrey y # de telefono/direccion de su agente de seguros
                  <TABLE cellpadding=0 cellspacing=0 border=0 width="100%"><TR><TD style="padding:3px; border:solid 1px #000000; height:75px;">&nbsp;</TD></TR></TABLE>
                </TD>
                <TD valign="top" style="font:bold 10pt Sans-Serif; width:50%; padding-left:5px;">numero de polisa
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
                    Si no tenia seguro el dia de el accidente, esperamos recibir una llamada inmediatamente para hacer un plan de pagos/o pago completo.<p>
                    <LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /><P>    
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
                <TD style="font:normal 10pt Sans-Serif;">866.894.0386 option 2</TD>
            </TR>            
        </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><I>Porfavor anote: Esto es un attento para colectar esta deuda. Cualquiera informacion obtainida sera usada solamente para este proposito.</I></TD>
            </TR>                 
        </TABLE>
    </DIV>
</LW:PAGE>