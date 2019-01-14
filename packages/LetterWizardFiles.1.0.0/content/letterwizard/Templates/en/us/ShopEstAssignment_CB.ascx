<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.ShopEstAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">
      <!--// Header Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%>.<BR>
              4850 Street Road, Suite 200<BR>
              Trevose, PA 19053
            </TD>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Phone: 1-800-234-3300<BR>
              Fax: 1-215-485-4653<BR>
              Photos: fleetemail@ceinetwork.com
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// LOGO //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align="right" style=padding-top:5px;"><IMG SRC="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif"%>" /></TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// TITLE Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD align=CENTER CLASS="TextTitle"><U>Come Back Claim Assignment</U></TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Content //-->
      <DIV style="margin-top:5px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD CLASS="TextNormal">This is a confirmation that CEI has assigned one of our drivers to receive an estimate only at <NOBR><B><%=Me.ShopName%></B>;</NOBR> this is not a repair authorization. The information on the claim is as follows:</TD>
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
                  <TD valign=top CLASS="TextLargeBold CellTitle" colspan=2>Customer Information</TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Customer:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ClientName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Branch:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.BranchName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextBold CellLabel">Claim #:</TD>
                  <TD CLASS="TextBold CellValue"><%=Me.ClaimNumber%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextLargeBold CellTitle" colspan="2"><%=iif(Me.IsEmployee,"Employee","Contact")%> Information</TD>
                </TR>
                <TR style="display:<%=iif(Me.IsEmployee,"Hidden","Visible")%>">
                  <TD CLASS="TextNormal CellLabel">Relationship:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactRelationship%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Name:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactName%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Address:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactAddress%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Home Phone #:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactHomePhone%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Mobile Home Phone #:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactMobileHomePhone%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Work Phone #:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactWorkPhone%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Mobile Work Phone #:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.ContactMobileWorkPhone%></TD>
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
            <TD CLASS="TextLargeNormal CellTitle" colspan=2><B>Vehicle Information</B> (please verify all information at time of inspection.)</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Year:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleYear%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Make:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMake%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Model:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleModel%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Style:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleStyle%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Color:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleColor%></TD>
                </TR>
              </TABLE>
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Vin:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleVin%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Plate:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehiclePlate%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Mileage:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleMileage%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Deductible:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.VehicleDeductible%></TD>
                </TR>
                <tr>
                  <td class="TextNormal CellLabel">Unit #:</td>
                  <td class="TextNormal CellValue"><%=Me.VehicleUnitNumber%></td>
                </tr>
              </TABLE>
            </TD>
          </TR>
        </TABLE>
      </DIV>

      <!--// Damage Information //-->
      <DIV style="margin-top:10px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
          <TR>
            <TD CLASS="TextLargeBold CellTitle">Damage Information</TD>
          </TR>
          <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD CLASS="TextNormal CellLabel">Service Description:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.DamageDescription%></TD>
                </TR>
                <TR>
                  <TD CLASS="TextNormal CellLabel">Damage Area:</TD>
                  <TD CLASS="TextNormal CellValue"><%=Me.DamageArea%></TD>
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
          <TD CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/en/us/ShopEstAssignment_CB</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Page 1 of 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>