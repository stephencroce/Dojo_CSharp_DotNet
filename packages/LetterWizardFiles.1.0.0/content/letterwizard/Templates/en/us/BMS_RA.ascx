<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.BMS_RA" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// COVER PAGE //-->
<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: always;" class="<%=me.PageSizeCss%>">
    <tr>
        <td height="100%" valign="TOP">
            <!--// COVER PAGE //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom: 5px; border-bottom: solid 1px #000000; width: 100%;">
                    <tr>
                        <td valign="top" width="50%" class="TextSmallNormal">
                            <%=Me.GetProperCEIName(Me.OrgCountryId)%> Recovery Services<br>
                            4850 E. Street Road, Suite 200<br>
                            Trevose, PA 19115
                        </td>
                        <td valign="top" width="50%" class="TextSmallNormal">Phone: 1-215-364-8253 (option 1)<br>
                            Fax: 1-215-485-4658
                        </td>
                    </tr>
                </table>
            </div>

            <!--// LOGO //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="right" style="padding-top: 5px;">
                            <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>"></td>
                    </tr>
                </table>
            </div>

            <!--// CONTENT //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td class="TextNormal" align="left" style="padding-top: 5px;">
                            <%=Now.ToString("MMMM dd, yyyy")%><p>
                                <%=Me.FullName%><br>
                                <%=Me.Address1%><br>
                                <%=IIf(Me.Address2.Length > 0, Me.Address2 & "<br>", String.Empty)%>
                                <%=Me.City%>,
              <%=Me.State%>,
              <%=Me.ZipCode%>
                            <p>

                            <p>
                                <b>Claim #:</b> <%=Me.Helper.Claim.ClaimId.ToString%><br />
                                <b>Vehicle:</b> <%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%><br />
                                <b>Vin #:</b> <%=Me.VehicleVin%><br />
                                <b>Unit #:</b> <%=Me.VehicleUnitNumber%>
                            </p>

                            Dear <%=Me.FirstName%>,<p>
                                I am sending you this letter in reference to your recent accident of <%=Me.DateOfLoss()%>. 
              This letter is to advise you that if and when it becomes necessary for you to get a rental vehicle while your company vehicle is in for repairs that you are being asked to contact <%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%>
                                <nobr><b>1-215-364-8253 (option 1)</b></nobr>
                                or
                                <nobr><b>866.894.0386 (option 1)</b></nobr>
                                ,  Auto Claims Management for Bristol-Myers Squibb Company, with the <b>R</b>ental <b>A</b>
                            greement number as soon as possible.<p>
                                Thank you in advance for your cooperation.<p>
                                    Sincerely,<br>
                                    <%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%>
                            <p>
                                Account Representative<br>
                                <%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%><br>
                                1-215-364-8253 Option 1
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
                    <td class="TextSmallBold" style="padding-top: 5px; border-top: solid 1px #000000;">Copyright 2006, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
                    <td class="TextSmallNormal" style="font: normal 5pt arial; padding-top: 5px; border-top: solid 1px #000000;" align="right">Templates/en/us/BMS_RA</td>
                </tr>
                <tr>
                    <td colspan="2" class="TextSmallBold" align="center">Page 1 of 1</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
