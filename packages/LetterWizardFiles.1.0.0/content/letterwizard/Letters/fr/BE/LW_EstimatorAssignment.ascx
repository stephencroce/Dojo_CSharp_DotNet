<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_EstimatorAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
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
              Devis et photos: estimates@xyrus.be<br />
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
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Assignation de l’expert indépendant</U></TD>
            </TR>     
        </TABLE>
    </DIV>

    <!--// Assigned To //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Attribué à:</TD>
            </TR>            
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Company /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Address /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Phone /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_Assigned_Name /></TD>
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
                                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nom:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Name" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="Lbl_Employee_Address" /></NOBR></TD>
                            </TR>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_HP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de Téléphone à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de Téléphone au bureau:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Employee_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM au bureau:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Employee_MWP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                        </TABLE>
                    </ASP:PANEL>
                    <ASP:PANEL runat=server id=Pan_ContactInformation>
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Personne à Contacter</TD>
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
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de Téléphone à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_HP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MHP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM à la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MHP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_WP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de Téléphone au bureau:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_WP" /></TD>
                            </TR>
                            </ASP:PLACEHOLDER>
                            <ASP:PLACEHOLDER runat=server id="PH_Contact_MWP">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N° de GSM au bureau:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Contact_MWP" /></TD>
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
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Information Véhicule</B> (veuillez vérifier toutes les données au moment de l’expertise.)</TD>
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
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teinte:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_Color" /></TD>
                        </TR>
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Num. Chassis (NIV):</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Vehicle_VIN" /></TD>
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

    <!--// Incident Information //-->
    <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Information Sinistre</B></TD>
            </TR>
            <TR>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Date Dégât:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_DOL" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Description Dégât:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_DmgDescription" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Code:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Code" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Type:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Type" /></TD>
                        </TR>         
                    </TABLE>                                
                </TD>
                <TD valign=top width="50%" style="padding-top:5px;">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dégât Principal:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_PDmg" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Dégât Additionnel:</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_ADmg" /></TD>
                        </TR>
                        <TR>
                            <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Véhicule manœuvrable<br>(non-immobilisé):</NOBR></TD>
                            <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="Lbl_Incident_Drivable" /></TD>
                        </TR>                        
                    </TABLE>   
                </TD>
            </TR>
        </TABLE>
    </DIV>
    
    <!--// Client Requirements //-->
    <%=Me.CustomData(Me.Index.LanguageId)%>
    
    <!--// Vehicle Location//-->
    <DIV style="margin-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" style="width:100%;">
            <TR runat=server id="trInShop1">
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif;">Location Véhicule</TD>
            </TR>
            <TR runat=server id="trNotInShop1">
                <TD style="border-bottom:solid 1px #000000; font:bold 10pt Sans-Serif; white-space: nowrap">Location Véhicule:</TD>
                <TD style="border-bottom:solid 1px #000000; padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif; white-space: nowrap">Avec contact Chauffeur/Claim</TD>
            </TR>
            <TR runat=server id="trNotInShop2">
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif; padding-top:10px;">Assurer Prix Convenu</TD>
            </TR>                                
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Name /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Address /></TD>
            </TR>
            <TR>
                <TD style="padding-top:5px; width:100px"">&nbsp;</TD>
                <TD style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;">
                  <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0>
                    <TR>
                      <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Tel:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Phone /></TD>
                    </TR>
                    <TR>
                      <TD style="padding-right:3px; font:normal 10pt Sans-Serif;">Fax:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=Lbl_VLocation_Fax /></TD>
                    </TR>
                  </TABLE>
                </TD>
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
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Letters/fr/BE/LW_EstimatorAssignment</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Page 1 ou 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>