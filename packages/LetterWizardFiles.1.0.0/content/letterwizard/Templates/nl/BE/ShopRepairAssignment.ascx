<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->


<!--// Page 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">

      <!--// COVER PAGE //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Xyrus NV<br />Berlaarsestraat 14<br />2500 Lier
            </TD>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
				      Phone: 0032 57 42 98 03 &nbsp; &nbsp; Fax: 0032 57 22 81 09<BR>
				      Estimates and Photos: estimate@xyrus.be<BR>
				      Invoices: invoice@xyrus.be
            </TD>
          </TR>
        </TABLE>
      </DIV>    

      <!--// LOGO //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align="right" style=padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC_Europe.gif"></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// TITLE Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align=CENTER CLASS="TextTitle"><U> : toestemming</U></TD>
          </TR>
          <TR>
            <TD align=CENTER CLASS="TextBold"><U><%=Now.ToShortDateString()%></U></TD>
          </TR>
        </TABLE>
      </DIV>
    
      <!--// Repair Facility //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD class="TextNormal"><B>Garage of carrosserie:</B> <%=Me.ShopName()%></TD>
          </TR>
          <%If Me.IsShopAssignment Then%>
          <TR>
            <TD class="TextNormal"><B>Attention:</B> <%=Me.ShopContact()%></TD>
          </TR>
          <%End If%>
        </TABLE>
      </DIV>
      
      <!--// Employee / Contact Information //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD valign=top class="TextLargeBold CellTitle" colspan=2>Informatie klant</TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Klant:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ClientName%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Afdeling:</TD>
                  <TD class="TextNormal CellValue"><%=Me.BranchName%></TD>
                </TR>
                <TR>
                  <TD class="TextBold CellLabel">Dossier nr:</TD>
                  <TD class="TextBold CellValue"><%=Me.ClaimNumber%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="TextLargeBold CellTitle" colspan="2">Informatie <%=iif(Me.IsEmployee,"werknemer","het contact")%></TD>
                </TR>
                <TR style="display:<%=iif(Me.IsEmployee,"Hidden","Visible")%>">
                  <TD class="TextNormal CellLabel">Verhouding:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactRelationship%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Naam:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactName%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Adres:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactAddress%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Tel nr:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactHomePhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">GSM nr:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactMobileHomePhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">Tel nr werk:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactWorkPhone%></TD>
                </TR>
                <TR>
                  <TD class="TextNormal CellLabel">GSM nr werk:</TD>
                  <TD class="TextNormal CellValue"><%=Me.ContactMobileWorkPhone%></TD>
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
            <TD CLASS="TextLargeNormal CellTitle" colspan=2><B>Informatie voertuig</B> (gelieve alle gegevens na te kijken)</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Bouwjaar:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleYear%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Merk:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMake%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Type:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleModel%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Model:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleStyle%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Kleur:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleColor%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Chassisnr:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleVin%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Nr plaat:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehiclePlate%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">KM-stand:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMileage%></TD>
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
            <TD valign=top colspan=2 style="padding-bottom:5px; font:normal 12pt Sans-Serif;"><B>CEI Informatie Purchase Order</B> (Bestelbon)</TD>
          </TR>
          <TR>
            <TD valign=top width="100%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="CellHeader TextBold">Omschrijving</TD>
                  <TD class="CellHeader TextBold">Datum schade</TD>
                  <TD align=right class="CellHeader TextBold">PO Nummer</TD>
                  <TD align=right class="CellHeader TextBold">PO Bedrag</TD>
                </TR>
                <%For Each Row As System.Data.DataRow In ReportData.Rows%>
                <TR>
                  <TD class="CellValue TextNormal"><%=MyBase.GetLiteral(Row(0), 2067)%></TD>
                  <TD class="CellValue TextNormal"><%=Row(1)%></TD>
                  <TD align=right class="CellValue TextNormal"><%=Row(2)%></TD>
                  <TD align=right class="CellValue TextNormal"><%=Row(3)%></TD>
                </TR>
                <%Next%>
                <TR>
                  <TD class="CellFooter TextBold">Totaal</TD>
                  <TD class="CellFooter TextNormal">&nbsp;</TD>
                  <TD class="CellFooter TextNormal">&nbsp;</TD>
                  <TD align=right class="CellFooter TextNormal">&nbsp;<%=Me.POAmountTotal()%></TD>
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
            <TD valign=top colspan=2 class="TextLargeBold"><B>Belangrijke Instructie</B> (om de goedkeuring/betaling af te handelen)</TD>
          </TR>
          <TR>
            <TD valign=top>
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD class="Bullet TextNormal">&nbsp;</TD>
                  <TD class="BulletContent TextNormal">Deze toestemming geldt alleen voor het toegestane bedrag (dus niet voor eventuele extra’s). Geen bijkomstige fondsen zullen worden betaald onder deze PO.</TD>
                </TR>
                <TR>
                  <TD class="Bullet TextNormal">&nbsp;</TD>
                  <TD class="BulletContent TextNormal">Supplements will NOT be paid unless CEI is notified promptly in advance, and prior to completion of repairs.</TD>
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
            <TD valign="top" class="TextNormal">Wanneer één of andere informatie (zie bovenstaand) niet correct is, gelieve contact te zoeken op ons tel. nummer  057 42 98 03.</TD>
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
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/nl/BE/ShopRepairAssignment.ascx</TD>
        </TR>
        <TR>
          <TD COLSPAN=2 CLASS="TextSmallBold" align="center">Page 1 of 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>