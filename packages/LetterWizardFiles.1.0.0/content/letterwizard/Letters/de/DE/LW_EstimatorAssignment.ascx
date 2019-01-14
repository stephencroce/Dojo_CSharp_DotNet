<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_EstimatorAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// C137440 - Changes Made on 10.05.2005//-->
<!--// PAGE 1 of 1 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="LEFT" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Assigned To //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD colspan="2" valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Auftrag an:</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                            <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Company/></TD>
                        </TR>
                        <TR>
                            <TD style="width:100px"">&nbsp;</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Address/></TD>
                        </TR>
                    </TABLE>
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                            <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;">per Fax an 0711-7861-2672</TD>
                        </TR>
                        <TR>
                            <TD style="width:100px"">&nbsp;</TD>
                            <TD style="padding-right:10px; font:normal 10pt Sans-Serif;">Telefon 0711 7861 2626 Frau Saring </TD>
                        </TR>  
                    </TABLE>
                </TD>                
            </TR>                    
        </TABLE>
    </DIV>

    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
            <TD width="100%" style="font:bold 10pt Sans-Serif; padding-bottom:10px">Bitte um Erstellung eines detaillierten Gutachtens mit Bildern. Bitte lassen Sie der Werkstatt ein Duplikat des</TD>
        </TR>
        <TR>
            <TD width="100%" style="font:bold 10pt Sans-Serif; padding-bottom:10px">Rechnungs- + Postanschrift:</TD>
        </TR>
        <TR>
            <TD width="100%" style="padding-left:20px; font:normal 10pt Sans-Serif;">Innovation Group Motor GmbH</TD>
        </TR>
        <TR>
            <TD width="100%" style="padding-left:20px; font:normal 10pt Sans-Serif;">Max Eyth Strasse 42</TD>
        </TR>
        <TR>
            <TD width="100%" style="padding-left:20px; font:normal 10pt Sans-Serif;">71088 Holzgerlingen</TD>
        </TR>
        <TR>
            <TD width="100%" style="padding-left:20px; font:normal 10pt Sans-Serif;">TIG- Debitoren Nr.: 235069</TD>
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
                            <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Kundendaten</TD>
                        </TR>            
                        <TR>
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kunde:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client preview="[Client]"/></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Abteilung:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch preview="[Branch]"/></TD>
                        </TR>  
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Schaden-Nr.:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number preview="[Claime Number]"/></TD>
                        </TR>                            
                    </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Kontaktperson</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" preview="[Employee Name]"/></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" preview="[Employee Address]"/></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" preview="1.215.555.1212"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Home Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" preview="1.215.555.1212"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" preview="1.215.555.1212"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mobile Work Phone #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" preview="1.215.555.1212"></ASP:LABEL></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Kontaktperson</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Funktion:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" preview="[Contact Relationship]"/></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" preview="[Contact Name]"/></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" preview="[Contact Address]"/></NOBR></TD>
                            </TR>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Fahrzeugdaten</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Baujahr:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" preview="[Year]"/></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Marke:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" preview="[Make]"/></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Typ:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" preview="[Model]"/></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Aufbau:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Style" preview="[Style]"/></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Farbe:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" preview="[Color]"/></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fahrgestellnummer:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" preview="[VIN]"/></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Amtl.Kennzeichen:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" preview="[Plate]"/></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilometerstand:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" preview="[Mileage]"/></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Selbstbeteiligung:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Deductible" preview="[Deductible]"/></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Incident Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Vorfalldaten</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Schadentag:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_DOL" preview="[Date of Loss]"/></TD>
                        </TR>                     
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Type:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Type" preview="[Type]"/></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Beschädigung:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_PDmg" preview="[Primary Damage]"/></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Zusätzl.Beschädigung:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_ADmg" preview="[Additional Damage]"/></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>

      <!--// Additional Comments //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" style="bold 10pt Sans-Serif; border-bottom:solid 1px #000000">Kommentar:</td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="txtComments" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>   
    
    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                    Bei Rückfragen wenden Sie sich bitte an:<P>
                    Innovation Group Motor GmbH<BR>
                    Frau Nicole Bayer<BR>
                    Telefon : 07031 - 8170 3005
                </TD>
            </TR>
          </TABLE>
    </DIV>
</LW:PAGE>