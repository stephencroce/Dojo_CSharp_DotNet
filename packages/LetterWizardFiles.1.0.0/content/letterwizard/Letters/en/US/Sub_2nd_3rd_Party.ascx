<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>

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
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Our Client:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblOrg1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Our Driver:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblDriver1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Our File #:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblClaim1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Date of Loss:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <asp:Label runat="server" ID="lblDOL"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" style="font: normal 10pt Sans-Serif; padding-right: 25px;">Vehicle:</td>
                            <td style="font: normal 10pt Sans-Serif;">
                                <%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></td>
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
                <td style="font: normal 10pt Sans-Serif;">
                    <%=Me.GetProperCEIName(Me.OrgCountryId)%> is the Subrogation Firm for the above Client who has sustained property damage as a result of an accident that occurred on the above-mentioned date.<p>
                        We have not received a reply from you regarding our previous letter requesting the name of your liability insurance carrier.  At this point we must therefore assume you were not covered by insurance at the time of the accident.<p>
                            <%=Me.GetProperCEIName(Me.OrgCountryId)%>
                    expects to hear from you immediately at 866.894.0386 regarding a payment plan and/or payment in full.<p>
                        The successful delivery of this letter is sufficeient legal proof you are aware of the debt you owe due to the above mentioned loss.<p>
                            <LW:EditBox runat="server" ID="Txt_Comments" Width="100%" Height="100px" />
                            <p>
                                <i>PLEASE NOTE: THIS IS AN ATTEMPT TO COLLECT A DEBT. ANY INFORMATION OBTAINED WILL BE USED SOLELY FOR THAT PURPOSE.</i>
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
                <td style="font: normal 10pt Sans-Serif;">866.894.0386 option 2</td>
            </tr>
        </table>
    </div>
</LW:Page>
