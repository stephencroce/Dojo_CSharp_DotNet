<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// PAGE 1 of 1 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Autorizaci�n para Reparar</U></TD>
        </TR>
        <TR>
          <TD align=CENTER style="font:bold 10pt Sans-Serif;"><U><ASP:LABEL runat=server id=lblDate /></U></TD>
        </TR>  
      </TABLE>
    </DIV>
    
    <!--// Repair Facility //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;"><B>Taller:</B><ASP:LABEL runat=server id=lblShopName /> <B>Atenci�n:</B><ASP:LABEL runat=server id="lblShopContact" /></TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;">CEI autoriza a reparar la incidencia por la cantidad abajo especificada.<BR>Por favor, contacte CEI inmediatamente si est� en desacuerdo con la cantidad autorizada.</TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Customer / Contact Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informaci�n del cliente</TD>
              </TR>            
              <TR>
                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Cliente:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimClient /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Filial:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimBranch /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>N� Incidencia:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimNumber /></TD>
              </TR>                            
            </TABLE>
          </TD>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblEmployeeInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informaci�n del empleado</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nombre:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblEmployeeName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Direcci�n:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeAddress" /></TD>
                </TR>
                <TR runat=server id="trEmployeeHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono de casa:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono mobil de casa:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono de oficina:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeWP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono mobil de oficina:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMWP" /></TD>
                </TR>
            </TABLE>
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblContactInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informaci�n del contacto</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relationship:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactRelationship" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblContactName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactAddress" /></TD>
                </TR>
                <TR runat=server id="trContactHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono de casa:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactHP" /></TD>
                </TR>
                <TR runat=server id="trContactMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono mobil de casa:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMHP" /></TD>
                </TR>
                <TR runat=server id="trContactWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono de oficina:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactWP" /></TD>
                </TR>
                <TR runat=server id="trContactMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Tel�fono mobil de oficina:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMWP" /></TD>
                </TR>
            </TABLE>                    
          </TD>
        </TR>           
      </TABLE>
    </DIV>
    
    <!--// Vehicle Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Informaci�n del veh�culo</B> (verifique, por favor, toda la informaci�n)</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>A�o:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleYear" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fabricante:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMake" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Modelo:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleModel" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Acabado:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleStyle" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Color:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleColor" /></TD>
                </TR>
                </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Bastidor:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleVIN" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Matr�cula:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehiclePlate" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilometraje:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMileage" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Descuento exigible:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleDeductable" /></TD>
                </TR>
              </TABLE>   
            </TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Purchase Order Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Informaci�n de Orden de Reparaci�n de CEI (cantidades sin IVA)</B></TD>
        </TR>
        <TR>
            <TD valign=top width="100%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Descripci�n</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Fecha de OR</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>N�mero de OR</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Cantidad Aprobada</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Fecha Revisi�n</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Presupuesto Revisado</NOBR></TD>
                </TR>
                <ASP:PLACEHOLDER runat=server id=phPOInfo></ASP:PLACEHOLDER>
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif;"><NOBR>Total</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalPOAmount" /></NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalRevisedAmount" /></NOBR></TD>
                </TR>                
              </TABLE>   
            <!--// Old Version
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Descripci�n</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Fecha De la Edici�n</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>N� Orden de Reparaci�n</NOBR></TD>
                    <TD align="right" style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Amount</NOBR></TD>
                </TR>
                <ASP:PLACEHOLDER runat=server id=XXXphPOInfo />
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-top:solid 1px #000000;"><NOBR>Total</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif; border-top:solid 1px #000000;"><NOBR>&nbsp;</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif; border-top:solid 1px #000000;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align="right" style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif; border-top:solid 1px #000000;"><NOBR><ASP:LABEL runat=server id="XXX_Lbl_Totals_Amount" preview=""></ASP:LABEL></NOBR></TD>
                </TR>                
              </TABLE> 
              //-->                           
            </TD>
        </TR>
      </TABLE>
    </DIV>

    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><U></U><B>Importantes Instrucciones de Pago y Autorizaci�n de Reparar</U></TD>
        </TR>
        <TR>
            <TD valign=top>
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <!--// [DMG: Updated Section TSR11933] //-->
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Esta autorizaci�n es s�lo por la cantidad aprobada (sin cantidad adicionales pendientes). Ning�n fondo adicional ser� pagado bajo esta orden de reparaci�n. Contacte a CEI inmediatamente si surgen costes adicionales  � esta orden de reparaci�n cubre s�lo cantidades autorizadas espec�ficas.</TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Las ampliaciones NO se pagar�n al menos que CEI sea notificada puntualmente antes y previo a completar la reparaci�n.</TD>
                </TR>
                <!--// [Removed From Letter TSR11933]
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Todas las reparaciones exigen peritaciones y fotos claras del da�o. Pueden surgir retrasos en los pagos  si no se env�an a CEI de una manera adecuada en el tiempo previsto.</TD>
                    </TR> 

                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Contacte el conductor con fecha para reparar � contacte CEI con la fecha.</TD>
                    </TR>
                //-->
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Una copia de esta autorizaci�n debe acompa�ar a la factura final, cuando no intervenga un perito.</TD>
                </TR>
              </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Final Note //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top style="font:normal 10pt Sans-Serif;">SI alguna de las informaciones de arriba es incorrecta, por favor contacte nuestras oficinas al <NOBR>900 8000 42</NOBR> y refi�rase al n� de incidencia <B><ASP:LABEL runat=server id=lblClaimNumber2></ASP:LABEL></B>.</TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                  Por favor, contacte a CEI para informar:
                  <UL>
                    <!--// [DMG: Modified Section TSR11933] //-->
                    <LI>Retrasos en la reparaci�n</LI>
                    <LI>Reparaci�n completada, con su fecha de finalizaci�n y fecha de entrega del veh�culo</LI>
                    <LI>Cualquier incidencia durante la reparaci�n.</LI>
                    <!--// [DMG: Original Content TSR11933]
                    <LI>Cita de Reparaci�n (si el veh�culo no est� en el taller).</LI>
                    <LI>Retrasos en reparar</LI>
                    <LI>Reparaci�n completada</LI>
                    <LI>Cualquier retraso en la recogida del veh�culo.</LI>
                    //-->
                  </UL>
                  Retrasos en el pago pueden tambi�n suceder si no se contacta a CEI por lo expuesto arriba.
                </TD>
            </TR>
          </TABLE>
    </DIV>
</LW:PAGE>