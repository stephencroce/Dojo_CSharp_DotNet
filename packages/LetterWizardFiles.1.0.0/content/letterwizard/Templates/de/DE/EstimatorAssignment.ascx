<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.EstimatorAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// Page 1 of 1 //-->
<table border="0" cellpadding="0" cellspacing="0" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">

      <!--// COVER PAGE //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              CEI Deutschland<br>
              c/o Innovation Group AG<br>
              Rotebühlstr. 121<br>
              70178 Stuttgart
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Telefon: 01805 – 010 343 02<br>
              Fax: 01805 – 010 343 03<br>
              E-mail: GutachtenDE@ceieurope.com
            </td>
          </tr>
        </table>
      </div>    

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="right" style="padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC_Europe.gif" %>"/></td>
          </tr>
        </table>
      </div>

      <!--// Title Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td colspan="2" class="TextLargeBold CellTitle">Auftrag an:</td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellValue"><%=Me.ShopName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellValue"><%=Me.ShopAddress%></td>
                </tr>
              </table>
            </td>
            <td align="right" valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td class="TextNormal CellValue">per Fax an 0711-7861-2672</td>
                </tr>
                <tr>
                  <td class="TextNormal CellValue">Telefon 0711 7861 2626 Frau Saring</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
    
      <!--// Important Instructions //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextBold">Bitte um Erstellung eines detaillierten Gutachtens mit Bildern. Bitte lassen Sie der Werkstatt ein Duplikat des</td>
          </tr>
          <tr>
            <td class="TextBold" style="padding-top:5px;">Rechnungs- + Postanschrift:</td>
          </tr>
          <tr>
            <td class="TextNormal" style="padding-left:20px; padding-top:5px;">
                CEI Schadenteam<br/>
                Tel: 01805-010 343 02<br/>
                Fax: 01805-010 343 03<br/>
                Mail: KommunikationDE@ceieurope.com
            </td>
          </tr>
        </table>
      </div>
            
      <!--// Employee / Contact Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" width="50%">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td valign="top" class="TextLargeBold CellTitle" colspan="2">Kundendaten</td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Kunde:</td>
                  <td class="TextNormal CellValue"><%=Me.ClientName%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Abteilung:</td>
                  <td class="TextNormal CellValue"><%=Me.BranchName%></td>
                </tr>
                <tr>
                  <td class="TextBold CellLabel">Schaden-Nr.:</td>
                  <td class="TextBold CellValue"><%=Me.ClaimNumber%></td>
                </tr>
              </table>
            </td>
            <td valign="top" width="50%">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextLargeBold CellTitle" colspan="2">Kontaktperson</td>
                </tr>
                <tr style="display:<%=iif(Me.IsEmployee,"none","inline")%>">
                  <td class="TextNormal CellLabel">Funktion:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactRelationship%></td>
                </tr>
                <tr style="display:<%=iif(Me.ContactName.length > 0,"inline","none")%>">
                  <td class="TextNormal CellLabel">Name:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactName%></td>
                </tr>
                <tr style="display:<%=iif(Me.ContactAddress.length > 0,"inline","none")%>">
                  <td class="TextNormal CellLabel">Adresse:</td>
                  <td class="TextNormal CellValue"><%=Me.ContactAddress%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>

      <!--// Vehicle Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextLargeNormal CellTitle" colspan=2><b>Fahrzeugdaten</b></td>
          </tr>
          <tr>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Baujahr:</TD>
                  <td class="TextNormal CellValue"><%=Me.VehicleYear%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Marke:</TD>
                  <td class="TextNormal CellValue"><%=Me.VehicleMake%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Typ:</TD>
                  <td class="TextNormal CellValue"><%=Me.VehicleModel%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Aufbau:</TD>
                  <td class="TextNormal CellValue"><%=Me.VehicleStyle%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Farbe:</TD>
                  <td class="TextNormal CellValue"><%=Me.VehicleColor%></td>
                </tr>
              </table>
            </td>
            <td valign="top" width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Fahrgestellnummer:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleVin%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Amtl.Kennzeichen:</td>
                  <td class="TextNormal CellValue"><%=Me.VehiclePlate%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Kilometerstand:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleMileage%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Selbstbeteiligung:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleDeductible%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>
      
      <!--// Damage Information //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td colspan="2" class="TextLargeBold CellTitle">Beschädigung</td>
          </tr>
          <tr>
            <td valign=top width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Schadentag:</td>
                  <td class="TextNormal CellValue"><%=Me.Helper.DateOfLoss%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Type:</td>
                  <td class="TextNormal CellValue"><%=Me.Helper.DamageType%></td>
                </tr>
              </table>
            </td>
            <td valign=top width="50%" style="padding-top:5px;">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td class="TextNormal CellLabel">Beschädigung:</td>
                  <td class="TextNormal CellValue"><%=Me.DamageArea%></td>
                </tr>
                <tr>
                  <td class="TextNormal CellLabel">Zusätzl.Beschädigung:</td>
                  <td class="TextNormal CellValue"><%=Me.AdditionalDamage%></td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>

      <!--// Additional Comments //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" class="TextLargeBold" style="border-bottom:solid 1px #000000">Kommentar:</td>
          </tr>
          <tr>
            <td valign="top" class="TextNormal" style="padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>  

      <!--// Important Instructions //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal">
              Bei Rückfragen wenden Sie sich bitte an:<p>
              CEI Deutschland, Schadenteam<br>
              Telefon: 01805 – 010 343 02<P>
            </td>
          </tr>
          <tr>
            <td class="TextBold">
              Gutachten und Bilder bitte senden an: GutachtenDE@ceieurope.com<br>
              Kasko und Haftpflichtgutachten zusätzlich per Post an
              <table border="0" cellpadding="0" cellspacing="0" style="padding-left:10px;">
                <tr>
                  <td class="TextBold">Rechnungsanschrift:</td>
                  <td class="TextBold">Postanschrift:</td>
                </tr>
                <tr>
                  <td valign="top" class="TextNormal" style="padding-left:10px;">
                    CEI Deutschland<br>
                    Ein Geschäftsbereich der<br>
                    PPG Deutschland Sales & Services GmbH<br>
                    Stackenbergstraße 34<br>
                    42329 Wuppertal
                  </td>
                  <td valign="top" class="TextNormal" style="padding-left:10px;">
                    CEI Deutschland<br>
                    c/o Innovation Group AG<p>
                    Rotebühlstr. 121<br>
                    70178 Stuttgart
                  </td>
                </tr>
              </table>
              Rechnung bitte senden an: RechnungDE@ceieurope.com
            </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, CEI Deutschland, Eigentum und Vertraulich.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/de/DE/EstimatorAssignment.ascx</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Seite 1 von 1</td>
        </tr>
      </table>
    </td>
  </tr>
</table>