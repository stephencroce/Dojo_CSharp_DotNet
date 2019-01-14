<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.EstimatorAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
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
              Téléphone: 03/241.01.39 &nbsp; &nbsp; Fax: 03/491.01.39<br>
              Devis et photos :estimate@xyrus.be<br>
              Factures: invoice@xyrus.be
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// LOGO //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align="right" style=padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC_Europe.gif"%>" /></TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// TITLE Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align=CENTER CLASS="TextTitle"><U>Assignation de l’expert indépendant</U></TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Assigned To //-->
      <DIV style="margin-top:10px;">
          <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                  <TD valign=top CLASS="TextLargeBold CellTitle" colspan=2>Attribué à:</TD>
              </TR>            
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.AssignedCompany%></TD>
              </TR>
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.AssignedCompanyAddress%></TD>
              </TR>
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.AssignedCompanyPhone%></TD>
              </TR>
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.AssignedCompanyName%></TD>
              </TR>
          </TABLE>
      </DIV>

      <!--// Employee / Contact Information //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD valign=top CLASS="TextLargeBold CellTitle" colspan=2>Information Client</TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Client:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ClientName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Division:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.BranchName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextBold CellLabel">Num. de Sinistre:</TD>
                  <TD CLASS="TextBold CellValue"><%=Me.ClaimNumber%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextLargeBold CellTitle" colspan="2">Information <%=iif(Me.IsEmployee,"Employé","Personne à Contacter")%></TD>
                </TR>
                <%if not Me.IsEmployee%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Relation:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactRelationship%></TD>
                </TR>
                <%end if%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Nom:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Adresse:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactAddress%></TD>
                </TR>
                <%if Me.ContactHomePhone.length > 0%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">N° de Téléphone à la maison:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactHomePhone%></TD>
                </TR>
                <%end if%>
                <%if Me.ContactMobileHomePhone.length > 0%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">N° de GSM à la maison:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactMobileHomePhone%></TD>
                </TR>
                <%end if%>
                <%if Me.ContactWorkPhone.length > 0%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">N° de Téléphone au bureau:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactWorkPhone%></TD>
                </TR>
                <%end if%>
                <%if Me.ContactMobileWorkPhone.length > 0%>
                <TR>
                  <TD CLASS="TextNormal CellLabel">N° de GSM au bureau:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactMobileWorkPhone%></TD>
                </TR>
                <%end if%>
              </TABLE>
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Vehicle Information //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD CLASS="TextLargeNormal CellTitle" colspan=2><b>Information Véhicule</b> (veuillez vérifier toutes les données au moment de l’expertise.)</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Année:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleYear%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Marque:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMake%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Modèle:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleModel%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Style:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleStyle%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Teinte:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleColor%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Num. Chassis (NIV):</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleVin%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Plaque d’immatriculation:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehiclePlate%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Kilométrage:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMileage%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Franchise:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleDeductible%></TD>
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
            <TD CLASS="TextLargeBold CellTitle" colspan=2>Information Sinistre</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Date Dégât:</TD>
                  <TD CLASS="TextNormal CellValue"><%=MyBase.Helper.DateOfLoss%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Description Dégât:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.DamageDescription%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Code:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Mybase.Helper.DamageCode%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Type:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Mybase.Helper.DamageType%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Dégât Principal:</TD>
                  <TD CLASS="TextNormal CellValue"><%=MyBase.Helper.PrimaryDamage%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Dégât Additionnel:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.AdditionalDamage%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Véhicule manœuvrable<br>(non-immobilisé):</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.IsDrivable%></TD>
                </TR>
              </TABLE>
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Vehicle Location//-->
      <DIV style="margin-top:20px;">
          <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <%if MyBase.Helper.IsInShop%>
              <TR>
                  <TD valign=top colspan=2 CLASS="TextBold CellTitle">Location Véhicule</TD>
              </TR>
              <%end if%>
              <%if not MyBase.Helper.IsInShop%>
              <TR>
                  <TD CLASS="TextBold CellTitle" width="1px"><NOBR>Location Véhicule:</NOBR></TD>
                  <TD CLASS="TextNormal CellHeader" width="100%">Avec contact Chauffeur/Claim</TD>
              </TR>
              <TR>
                  <TD CLASS="TextBold" valign=top colspan=2>Assurer Prix Convenu</TD>
              </TR>  
              <%end if%>
              
              <%if Me.VehicleLocationName.Length > 0 then%>
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal"><%=Me.VehicleLocationName%></TD>
              </TR>
              <%end if%>
              <%if Me.VehicleLocationAddress.Length > 0 then%>
              <TR>
                  <TD CLASS="TextNormal CellLabel">&nbsp;</TD>
                  <TD CLASS="TextNormal"><%=Me.VehicleLocationAddress%></TD>
              </TR>
              <%end if%>
              <TR>
                  <TD COLSPAN=2>
                    <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 style="padding-left:10px;">
                      <TR>
                        <TD CLASS="TextNormal CellLabel">Téléphone:</TD>
                        <TD CLASS="TextNormal"><%=Me.VehicleLocationPhone%></TD>
                      </TR>
                      <TR>
                        <TD CLASS="TextNormal CellLabel">Fax:</TD>
                        <TD CLASS="TextNormal"><%=Me.VehicleLocationFax%></TD>
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
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/fr/BE/EstimatorAssignment</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Pagina 1 van 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>