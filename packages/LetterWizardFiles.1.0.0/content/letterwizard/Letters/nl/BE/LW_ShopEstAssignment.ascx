<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// PAGE 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">
      <!--// Header Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Xyrus NV<br />Berlaarsestraat 14<br />2500 Lier
            </TD>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Téléphone: 03/241.01.39 &nbsp; &nbsp; Fax: 03/491.01.39<br />
              Ramingen en foto’s: engineer@xyrus.be<br />
              Eindfacturen: invoice@xyrus.be
            </TD>
          </TR>
        </TABLE>
      </DIV>
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
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Toewijzing Raming Herstelling</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Content //-->
    <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Dit is een bevestiging die CEI heeft ondertekend om enkel een schatting te bekomen <B><ASP:LABEL runat=SERVER id=Lbl_ShopName /></B>; Dit is geen toestemming tot herstelling. De informatie op het schadedossier is de volgende:</TD>
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
                            <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informatie Klant</TD>
                        </TR>            
                        <TR>
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Klant:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Afdeling:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch /></TD>
                        </TR>  
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Dossier:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number /></TD>
                        </TR>                            
                    </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informatie Werknemer</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Naam:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adres:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Telefoonnummer thuis:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>GSM-nummer thuis:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Telefoonnummer werk:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>GSM-nummer werk:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Informatie contactpersoon</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relatie:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Naam:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adres:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Telefoonnummer thuis:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>GSM-nummer thuis:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Telefoonnummer werk:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>GSM-nummer werk:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MWP" /></TD>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Informatie voertuig</B> (gelieve alle informatie te verifiëren op het moment van de inspectie)</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Jaar:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Merk:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Model:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Stijl:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Style" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kleur:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" /></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Chassisnummer VIN:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nummerplaat:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilometerstand:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Aftrekposten:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Deductible" /></TD>
                        </TR>
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>
    
    <!--// Client Requirements //-->
    <%=Me.CustomData(Me.Index.LanguageId)%>
    
    <!--// Damage Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Informatie Schade</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Voornaamste schade:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Primary" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Bijkomende schade:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Damage_Additional" /></NOBR></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Locatie:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Location" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Beschadigde zone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Damage_Area" /></NOBR></TD>
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
            <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Belangrijkste Instructies</B> (om de herstellingsgoedkeuring/betaling af te handelen.)</TD>
            </TR>
            <TR>
                <TD valign=top>
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Als u deze opdracht niet kan behandelen, gelieve dan onmiddellijk contact op te nemen met CEI op het nummer <nobr>03/241.01.39</nobr>.</TD>
                    </TR>
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Verzeker u ervan dat u de speciale instructies volgt die bij deze opdracht horen bij het schrijven van de schatting.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">CEI moet gecontacteerd worden met de schatting binnen de 24 werkuren vanaf het moment dat het voertuig binnenkomt bij bij de hersteller.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Wanneer de schatting voltooid is, gelieve deze dan te mailen samen met de ingevulde voorpagina naar CEI: <nobr>estimate@xyrus.be</nobr></TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Neem duidelijke foto’s van alle schades en van de nummerplaat. E-mailen aan: <nobr>estimate@xyrus.be</nobr></TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">6.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Dit is geen herstellingsgoedkeuring. Toestemmingen zullen alleen komen van CEI.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">7.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Neem telkens contact op met de bestuurder voor bevestiging van de datum van afspraak bij ontvangst van deze opdracht. </TD>
                    </TR> 
                </TABLE>                                
                </TD>
            </TR>
        </TABLE>
    </DIV>


    <!--// Decals / PDR //-->
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
            <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Beletteringsstickers / Paintless Dent Removal (PDR) - Uitdeuken zonder spuiten</B></TD>
            </TR>
            <TR>
                <TD valign=top>
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Als de beletteringsstickers vervangen moeten worden, gelieve aan te duiden welk paneel, specifieke tekst, kleur van beletteringsstickers, en bevestig dat alle informatie op de voorpagina staat.</TD>
                    </TR>
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">PDR - PDR moet gebruikt worden wanneer dit proces de meest efficiënte en rendabele methode blijkt te zijn.</TD>
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
				<TD valign=top style="font:normal 10pt Sans-Serif;">De bestuurder heeft toegestemd om langs te komen op de volgende datum <B><ASP:LABEL runat=server id="Lbl_EstApptDate" /></B>. Als de bestuurder niet langskomt tegen deze datum, gelieve te bellen naar CEI op <nobr>03/241.01.39</nobr>, zodat we onze klant kunnen informeren. Indien er problemen zijn met het takelen, gelieve dan contact op te nemen met CEI.</TD>
            </TR>
        </TABLE>
    </DIV>  
    </TD>
  </TR>
  <TR>
    <TD height="1px">
      <!--// Footer //-->
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, The CEI Group, Inc. Proprietary and Confidential.</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Letters/nl/BE/LW_ShopEstAssignment</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Pagina 1 van 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>