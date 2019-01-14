<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

<!--// PAGE 1 of 2 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="2">
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
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Asignación de la Incidencia</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Content //-->
    <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Esta es una confirmación de que CEI Europa ha asignado al conductor uno de sus talleres, <B><ASP:LABEL runat=SERVER id="Lbl_ShopName" preview="SHOP NAME"></ASP:LABEL></B>. Esta no es una autorización de reparación. La información de la incidencia es la siguiente:</TD>
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
                            <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Información del cliente</TD>
                        </TR>            
                        <TR>
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Cliente:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client preview="Client"></ASP:LABEL></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Filial:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch preview="Branch"></ASP:LABEL></TD>
                        </TR>  
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Nº Incidencia:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number preview="Claim Number"></ASP:LABEL></TD>
                        </TR>                            
                    </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Información del empleado</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nombre:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" preview="Employee Name"></ASP:LABEL></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dirección:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teléfono Móvil:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" preview="Mobile Phone"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teléfono Oficina:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" preview="Work Phone"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Información del contacto</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Grado de relación:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" preview="Contact Relationship"></ASP:LABEL></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nombre:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" preview="Contact Name"></ASP:LABEL></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dirección:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" preview="Contact Address"></ASP:LABEL></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teléfono Móvil:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" preview="Mobile Phone"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teléfono Móvil:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" preview="Work Phone"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>                    
                    </ASP:PANEL>
                </TD>
            </TR>           
        </TABLE>
    </DIV>

    <!--// Vehicle Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Información del vehículo</B> (por favor, verifique la información en el momento de la inspección.)</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Año:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" preview="Year"></ASP:LABEL></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fabricante:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" preview="Make"></ASP:LABEL></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Modelo:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" preview="Model"></ASP:LABEL></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Bastidor:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" preview="VIN"></ASP:LABEL></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Matricula:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" preview="Plate Number"></ASP:LABEL></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilometraje:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" preview="Mileage"></ASP:LABEL></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Franquicia:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Deductible" preview="Deductible"></ASP:LABEL></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Damage Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Información del Daño</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Area dañada:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Area"/></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Important Instructions //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>INSTRUCCIONES IMPORTANTES</U></TD>
        </TR>
        <TR>
          <TD align=CENTER style="font:normal 12pt Sans-Serif;">(en orden de expeditar el pago / autorización de la reparación)</TD>
        </TR>   
      </TABLE>
    </DIV>
   
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top>
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Si no es capaz de realizar esta reparación, por favor, llame inmediatamente a CEI al <NOBR>900 8000 42</NOBR>.</TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Asegúrese de seguir todas las instrucciones que acompañan esta reparación.</TD>
                        </TR> 
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">En el momento en que el vehículo llegue al taller, contacte CEI, inmediatamente, para informar de la entrada del vehículo en el taller y facilitar una <B>ESTIMACIÓN VISUAL</B></TD>
                        </TR> 
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Cuando realice el presupuesto debe enviarlo a CEI, mediante un fax, al 902 21 5000 o al correo electrónico: talleres@ceieurope.com.</TD>
                        </TR> 
<!--// Removed [TSR11933]
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Siempre tome 4 fotos de las zonas dañadas y 1 de la matrícula. Envie a: <NOBR>fotos@ceieurope.com</NOBR></TD>
                        </TR> 
//-->
                        <ASP:PLACEHOLDER runat=server id="PH_LaborRate" visible=True>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Por favor, complete el presupuesto al precio de “Mano de Obra Directa” indicada abajo para asegurarse la necesaria Orden de Reparación.<BR><B>Precio de Mano de Obra Directa = <ASP:LABEL runat=SERVER id="Lbl_BodyRate" preview="BODY LABOR RATE"/></B><BR>Nota: Si el Precio de Mano de Obra Directa no aparece en el espacio asignado arriba, por favor llame para confirmar la cantidad acordada (antes de enviar el presupuesto).</TD>
                        </TR>
                        </ASP:PLACEHOLDER>
                    </TABLE>                                
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Final Note //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top style="font:normal 10pt Sans-Serif;">El conductor ha acordado venir para realizar un presupuesto el día <B><ASP:LABEL runat=server id="Lbl_EstApptDate"></ASP:LABEL></B>. Si el conductor no acude para la fecha señalada, por favor, llame al <NOBR>900 8000 42</NOBR> para que podamos informar a nuestros clientes.</TD>
        </TR>
      </TABLE>
    </DIV>

      <!--// Additional Comments //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" style="font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000">Comentarios:</td>
          </tr>
          <tr>
            <td valign="top" style="font:normal 10pt Sans-Serif;padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="EditBox1" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>   
</LW:PAGE>

<!--// PAGE 2 of 2 //-->
<LW:PAGE runat=server id="PG_2" pagenumber="2" pagecount="2">
<TABLE cellspacing=0 cellpadding=0 width=100% border=0>
    <TR>
        <TD valign=top align=center><FONT size=-3><CENTER><B>CEI Auto Claims and Risk Management Services<BR><I><U>Pautas y Procedimientos a los Talleres</U></I></B></CENTER></TD>
    </TR>
    <TR>
        <TD style="padding-right:80px;"><FONT size=-3>
            <UL>
                <LI><B>A. PRESUPUESTO</B></LI>
                <UL>
                    <LI style="TEXT-ALIGN: justify">Llame a CEI inmediatamente después de la entrada del vehículo al taller, sea por recogida de Uds., por el conductor, o por la grúa, y facilite una <B>ESTIMACIÓN VISUAL</B>.</LI>
                    <LI style="TEXT-ALIGN: justify">Para realizar el presupuesto incluya la siguiente información: Número de Incidencia CEI / Nombre del Conductor / Vehículo / Matrícula / Número de días necesarios para la reparación.</LI>
                    <LI style="TEXT-ALIGN: justify">Cuando escriba un presupuesto incluya todos los daños visibles reportados en esta carta de asignación. Informe a CEI si algo es dudoso  o si pueden haber daños ocultos. Los daños inesperados deben ser estimados por separado y CEI debe ser avisada inmediatamente.</LI>
                    <LI style="TEXT-ALIGN: justify">El conductor no se lleva copia del presupuesto.</LI>
                    <LI style="TEXT-ALIGN: justify">Cuando no intervenga un perito o en los casos requeridos por CEI, tome fotos claras de la(s) zona(s) dañada(s) y de la matrícula. Envíe las fotos a fotos@ceieurope.com.</LI>
                    <LI style="TEXT-ALIGN: justify"><B>Coches de Sustitución:</B> nunca facilite un coche de alquiler al conductor. Nuestros clientes tienen instrucciones específicas respecto a los coches de alquiler. Los coches de cortesía son aceptables, si el taller considera la situación adecuada.</LI>
                    <LI style="TEXT-ALIGN: justify"><B>Perito:</B> si el cliente pide un perito, es obligación del taller acordar con él el servicio y su precio. Cuando un perito autoriza una reparación, el taller no necesita la autorización de CEI para realizarla. Asimismo, el taller debe enviar copia de la peritación, junto con la factura.</LI>
                </UL>
                <LI><B>B. ORDEN DE REPARACIÓN</B></LI>    
                <UL>
                    <LI style="TEXT-ALIGN: justify">La reparación no podrá empezar sin una Orden de Reparación emitida por CEI, a excepción de los casos en los cuales interviene el perito. CEI no se responsabiliza de las reparaciones no autorizadas. El número de  Orden de Reparación debe ser incluido en la factura final. El taller no debe aceptar autorizaciones del conductor.</LI>
                    <LI style="TEXT-ALIGN: justify">Notifique a CEI los retrasos significativos, sea por problemas de recambios, materiales, etc.</LI>
                    <LI style="TEXT-ALIGN: justify">Una vez empezada la reparación, si es necesario alguna ampliación de los daños, pare inmediatamente la reparación. Llame a CEI con la información de la ampliación y el importe suplementario. Espere autorización para dicha ampliación. Las ampliaciones deben ser previas a la finalización de la reparación.</LI>
                </UL>
                <LI><B>C. CONCLUSIÓN DE LA REPARACIÓN</B></LI>    
                <UL>
                    <LI style="TEXT-ALIGN: justify">Una vez concluida la reparación, notifíquelo al conductor y llame a CEI inmediatamente para informar de la finalización de la reparación y confirmar la fechas de inicio y finalización de la reparación y fecha de entrega del vehículo.</LI>
                    <LI style="TEXT-ALIGN: justify">Asegúrese de limpiar el vehículo antes de entregarlo al conductor.</LI>
                    <LI style="TEXT-ALIGN: justify">Ningún vehículo puede ser devuelto al conductor antes de que se acabe la reparación a no ser que, por alguna situación especial, CEI lo autorice.</LI>
                </UL>
                <LI><B>D. FACTURACIÓN Y PAGO</B><BR>Los siguientes papeles son <B>NECESARIOS</B> para cobrar una factura</LI>
                <UL>
                    <LI style="TEXT-ALIGN: justify">La factura y la peritación o presupuesto deben ser enviados por fax, al 902 21 5000.</LI>
                    <LI style="TEXT-ALIGN: justify">Factura final reflejando el coste total de la reparación. La factura final debe contener una descripción detallada de los materiales utilizados, el número exacto de horas de M.O.D. y el número de incidencia de CEI.</LI>
                    <LI style="TEXT-ALIGN: justify">La factura final debe de estar en concordancia con el peritaje o con su presupuesto previo y el precio de M.O.D. debe de ser el acordado entre el taller y CEI.</LI>
                    <LI style="TEXT-ALIGN: justify"><B>No deben aplicar el descuento en la factura.</B></LI>
                    <LI style="TEXT-ALIGN: justify">La factura final se emite a nombre de:<DIV style="padding-left:10px">PPG IBÉRICA SALES &amp; SERVICES S.L.<BR>Carretera de Gracia a Manresa – Km 19,2<BR>08191 – Rubi<BR>Barcelona</DIV></LI>
                    <!--// -- SDR16257 -- // <LI style="TEXT-ALIGN: justify">Y se envía a:<DIV style="padding-left:10px">PPG INDUSTRIES CZECH REPUBLIC, s.r.<BR>Axis Office Park<BR>CT Park Modrice<BR>Brnenska 873<BR>66442 Modrice<BR>República Checa</div></LI> //-->
                    <LI style="TEXT-ALIGN: justify">Y se envía a:<DIV style="padding-left:10px">PPG INDUSTRIES CZECH REPUBLIC, S.R.O.<BR>CEI EUROPE<BR>CTP Business Park<BR>Evropská 873<BR>664 42 Brno - Modrice<BR>Czech Republic</div></LI>
                    <LI style="TEXT-ALIGN: justify">El original de la factura final debe ser enviado por correo postal.</LI>
                    <LI style="TEXT-ALIGN: justify">El pago se hará bajo los términos previamente acordados.</LI>
                </UL>
            </UL>
        </TD>
    </TR>
    <TR>
        <TD valign=top align=center><FONT size=-3><B>POR FAVOR CONTACTE CON  CEI EN EL <NOBR>900 8000 42</NOBR> SI NECESITA ACLARACIONES POSTERIORES.</B></TD>
    </TR>
</TABLE>

</LW:PAGE>