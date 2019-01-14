<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// PAGE 1 of 3 //-->
<LW:Page runat="server" ID="PG_1" PageNumber="1" PageCount="1">
    <!--// LOGO //-->
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="right" style="padding-top: 5px;">
                    <asp:PlaceHolder runat="server" ID="Img_Logo"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
    </div>

    <!--// TITLE Section //-->
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="CENTER" style="font: bold 14pt Sans-Serif;"><u>Recovery Follow-Up Letter</u></td>
            </tr>
        </table>
    </div>

    <!--// Date / To Address //-->
    <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td style="font: bold 10pt Sans-Serif; padding-bottom: 10px;">
                    <asp:Label runat="server" ID="lblDate"></asp:Label></td>
            </tr>
            <tr>
                <td style="font: normal 10pt Sans-Serif;">
                    <asp:Label runat="server" ID="lblDisplayCompany" /><br>
                    <asp:Label runat="server" ID="lblDisplayName" /><br>
                    <asp:Label runat="server" ID="lblAddress"></asp:Label></td>
            </tr>
        </table>
    </div>

    <!--// Date / To Address //-->
    <div style="padding-top: 20px;">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" style="font: normal 10pt Sans-Serif; width: 75px;">RE:</td>
                <td valign="top" style="font: normal 10pt Sans-Serif;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Client:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblOrg1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Driver:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblDriver1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Our File #:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblClaim1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Your Claim #:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblInsuredClaim"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Your Policy #:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblPolicy"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Date of Loss:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblDOL"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Vehicle:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblVehicle" /><%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></td>
                        </tr>                        
                        <tr>
                            <td align="right" style="font: bold 10pt Sans-Serif; padding-right: 25px;">Loss Amount:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblLossAmount"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: bold 10pt Sans-Serif; padding-right: 25px;">Location of Loss:</td>
                            <td style="font: normal 10pt Sans-Serif;"><%=Me.Helper.Claim.AccidentDescription.Address.City.ToString & ", " & Me.Helper.Claim.AccidentDescription.Address.StateAbbreviation.ToString%></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: bold 10pt Sans-Serif; padding-right: 25px;">CEI Tax ID:</td>
                            <td style="font: normal 10pt Sans-Serif;">23-2290246</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <!--// Content //-->
    <div style="padding-top: 20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td style="font: bold 10pt Sans-Serif; padding-bottom: 10px;">Dear
                    <asp:Label runat="server" ID="lblContact"></asp:Label>:</td>
            </tr>
            <tr>
                <td style="font: normal 10pt Sans-Serif;">This letter is a follow-up to the claim paperwork that CEI Recovery Services has sent to your attention in regards to the above mentioned claim.<p />
                    CEI is asking that you please contact us at the below phone number to discuss the recovery payment that we have requested.<p />

                    We would greatly appreciate your prompt response to this letter so we can both bring this claim to a quick resolution. If payment is forthcoming, please make sure your companies draft is made payable to: CEI Network Canada, Inc.<p />
                    <LW:EditBox runat="server" ID="Txt_Comments" Width="100%" Height="100px" />
                    <p />

                    Thank you in advance for your assistance in this matter.<p />
                </td>
            </tr>
        </table>
    </div>


    <!--// Content //-->
    <div style="padding-top: 20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td style="font: normal 10pt Sans-Serif; padding-bottom: 10px;">Sincerely,</td>
            </tr>
            <tr>
                <td style="font: normal 10pt Sans-Serif;">Team 5</td>
            </tr>
            <tr>
                <td style="font: normal 10pt Sans-Serif;"><%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%></td>
            </tr>
            <tr>
                <td style="font: normal 10pt Sans-Serif;">215-364-8253, opt. #1</td>
            </tr>
        </table>
    </div>
</LW:Page>
