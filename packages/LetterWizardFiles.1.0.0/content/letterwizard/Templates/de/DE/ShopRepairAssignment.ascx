<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<!--// Page 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">

      <!--// COVER PAGE //-->
      <DIV>
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
              E-mail: RechnungDE@ceieurope.com
            </td>
          </tr>
        </table>
      </DIV>    

      <!--// LOGO //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align="right" style="padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC_Europe.gif" %>"></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// TITLE Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align=CENTER CLASS="TextTitle"><U>REPARATURFREIGABE</U></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// Repair Facility //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD class="TextNormal"><%=Me.ShopName()%></TD>
          </TR>
          <%If Me.IsShopAssignment Then%>
          <TR>
            <TD class="TextNormal"><%=Me.ShopAddress()%></TD>
          </TR>
          <%End If%>
        </TABLE>
      </DIV>
      
      <!--// Content //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD class="TextNormal">Wir bestätigen hiermit die Reparaturfreigabe für diesen Schaden. Grundlage für die Reparatur des Fahrzeugs ist der von Ihnen erstellte Kostenvoranschlag. Sollte sich wider Erwarten etwas am Reparaturverlauf ändern oder verzögern, muss dies umgehend gemeldet werden.<P>Schadendaten für diesen Auftrag:<P></TD>
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
                  <TD valign=top class="TextLargeBold CellTitle" colspan=2>Kundendaten</TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Kunde:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ClientName%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Abteilung:</TD>
                  <TD class="TextNormal CellValue"><%=Me.BranchName%></TD>
                </TR>
                <TR>
                  <TD class="TextBold CellLabel">Schaden-Nr.:</TD>
                  <TD class="TextBold CellValue"><%=Me.ClaimNumber%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="TextLargeBold CellTitle" colspan="2">Kontaktperson</TD>
                </TR>
                <TR style="display:<%=iif(Me.IsEmployee,"none","inline")%>">
                  <TD class="TextNormal CellLabel">Funktion:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactRelationship%></TD>
                </TR>
                <TR style="display:<%=iif(Me.ContactName.length > 0,"inline","none")%>">
                  <TD class="TextNormal CellLabel">Name:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactName%></TD>
                </TR>
                <TR style="display:<%=iif(Me.ContactAddress.length > 0,"inline","none")%>">
                  <TD class="TextNormal CellLabel">Adresse:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactAddress%></TD>
                </TR>
              </TABLE>
            </TD>
          </TR>
        </TABLE>
      </DIV>

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
      
      <!--// Important Instructions //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td valign="top" class="TextNormal" style="padding-left:10px;">
                    Die Reparaturrechnung bitte immer ausstellen auf:<p>
                    CEI Deutschland<br>
                    Ein Geschäftsbereich der<br>
                    PPG Deutschland Sales & Services GmbH<br>
                    Stackenbergstraße 34<br>
                    42329 Wuppertal
                  </td>
                  <td valign="top" class="TextNormal" style="padding-left:10px;">
                    Die Reparaturrechnung bitte immer schicken an:<br>
                    RechnungDE@ceieurope.com  oder<br>
                    Innovation Group AG, z. H. CEI Schadenteam <p>
                    Rotebühlstr. 121<p>
                    70178 Stuttgart
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </div>


      <!--// Comments //-->
      <div style="margin-top:10px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" class="TextLargeBold" style="border-bottom:solid 1px #000000">Kommentar:</td>
          </tr>
          <tr>
            <td valign="top" style="padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" /></td>
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
              CEI Deutschland<br>
              Schadenteam<br>
              <b>01805 – 010 343 02</b>
            </td>
          </tr>
        </table>
      </div>
    </TD>
  </TR>
  <TR>
    <TD height="1px">
      <!--// Footer //-->
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, CEI Deutschland, Eigentum und Vertraulich.</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/de/DE/ShopRepairAssignment.ascx</TD>
        </TR>
        <TR>
          <td colspan="2" class="TextSmallBold" align="center">Seite 1 von 1</td>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>