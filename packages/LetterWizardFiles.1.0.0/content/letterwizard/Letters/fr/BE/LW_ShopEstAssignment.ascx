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
              Devis et photos: engineer@xyrus.be<br />
              Factures: invoice@xyrus.be
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
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Demande de devis de réparation</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Content //-->
    <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Ceci est une confirmation que CEI a été mandaté par le client/chauffeur pour obtenir uniquement un devis; Ceci n’est pas une autorisation de réparation. L’information sur le dossier-sinistre est la suivante:</TD>
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
                            <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Client</TD>
                        </TR>            
                        <TR>
                            <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Client:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Client /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Division:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Branch /></TD>
                        </TR>  
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Num. de Sinistre:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Claim_Number /></TD>
                        </TR>                            
                    </TABLE>
                </TD>
                <TD valign=top width="50%">
                    <ASP:PANEL runat=server id=Pan_EmployeeInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Employé</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nom:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de tel. à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM personnel:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de tel. Travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Personne à contacter</TD>
                            </TR>            
                            <TR>
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relation:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_Relationship" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nom:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Name" /></NOBR></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Contact_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de tel. à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM personnel:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de tel. Travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MWP" /></TD>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Information véhicule</B> (veuillez vérifier toutes les infos au moment de l’inspection)</TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Année:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Year" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Marque:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Make" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Modèle:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Model" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Style:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Style" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Couleur:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" /></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>NIV:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Plaque d’immatriculation:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Plate" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilométrage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Mileage" /></NOBR></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Franchise:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Deductible" /></TD>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Information Dégât</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dégât principal:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Primary" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dégât(s) additionnel(s):</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Damage_Additional" /></NOBR></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Zone d’impact:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Damage_Location" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Zone endommagée:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Damage_Area" /></NOBR></TD>
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
            <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Instructions Principales</B> (pour permettre l’autorisation/le paiement de la réparation.)</TD>
            </TR>
            <TR>
                <TD valign=top>
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Si vous ne pouvez pas traiter cette assignation/réparation, veuillez directement contacter CEI au numéro <NOBR>03/241.01.39</NOBR>.</TD>
                    </TR>
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Assurez-vous de suivre les instructions spéciales qui vont ensemble avec cette assignation lors de la rédaction de ce devis.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">CEI doit être contacté avec le devis dans les 5 heures ouvrables à partir du moment ou le véhicule est rentré au garage.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Si le devis est complété/réalisé, veuillez l’envoyer par mail, accompagné de la page d’en-tête à CEI: <nobr>estimate@xyrus.be</nobr></TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Prenez des photos claires de tous les dégâts et de la plaque d’immatriculation. Envoyer par mail à: <nobr>estimate@xyrus.be</nobr></TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">6.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Ceci n’est pas une autorisation de réparation. Les autorisations définitives peuvent uniquement être données par CEI.</TD>
                    </TR> 
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">7.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Prenez toujours contact avec le chauffeur pour confirmation de la date du rendez-vous, dès la réception de cette demande. </TD>
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
            <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Décalcomanies / Auto-collants / Paintless Dent Removal - Débosselage sans peinture (PDR)</B></TD>
            </TR>
            <TR>
                <TD valign=top>
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Si la décalcomanie doit être remplacée, veuillez indiquer sur quel panneau, texte spécifique, couleur de la décalcomanie, et confirmer que toutes les informations se trouvent sur la page de couverture.</TD>
                    </TR>
                    <TR>
                        <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                        <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">PDR - PDR doit être utilisé s’il s’avère que ce processus est la méthode la plus efficace et rentable.</TD>
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
				<TD valign=top style="font:normal 10pt Sans-Serif;">Le chauffeur a consenti de passer pour un devis le <B><ASP:LABEL runat=server id="Lbl_EstApptDate" /></B>. Si le chauffeur ne passe pas avant cette date, veuillez prendre contact avec CEI au <NOBR>03/241.01.39</NOBR>, de façon que nous puissions informer notre client. S’il y a des problèmes avec le dépannage, veuillez contacter CEI.</TD>
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
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Letters/fr/BE/LW_ShopEstAssignment</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Page 1 ou 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>