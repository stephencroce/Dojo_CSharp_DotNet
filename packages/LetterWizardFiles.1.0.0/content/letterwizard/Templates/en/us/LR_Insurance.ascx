<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.LossRecovery" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<%  If MyBase.Index.State = CEI.Application.Intelliclaim.UserService.LW.Index.eState.Edit Then%>
<table border="0" cellpadding="10" cellspacing="0" style="border: dashed 1px #993333; width: 100%; margin-bottom: 20px;">
    <tr>
        <td>
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="TextBold">Edit Letter Properties:</td>
                </tr>
                <tr>
                    <td style="padding-left: 20px; padding-top: 10px;">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right: 5px;">Your Insured:</td>
                                <td class="CellValue TextSmallNormal">
                                    <asp:DropDownList CssClass="TextSmallNormal" ID="cmbInsured" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right: 5px;">Include Insufficient Funds Copy:</td>
                                <td class="CellValue TextSmallNormal">
                                    <asp:CheckBox CssClass="TextSmallNormal" ID="chkInsufficient" runat="server" /></td>
                            </tr>
                            <%If Me.OrgCountryId = 2 Then%>
                            <tr>
                                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right: 5px;">Disable PST Comment:</td>
                                <td class="CellValue TextSmallNormal">
                                    <asp:CheckBox runat="server" ID="chkDisablePstComment" /></td>
                            </tr>
                            <%End If%>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%  End If%>


<!--// Page 1 of 1 //-->
<table border="0" cellpadding="0" cellspacing="0" class="<%=me.PageSizeCss%>">
    <tr>
        <td height="100%" valign="top">

            <!--// COVER PAGE //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom: 5px; border-bottom: solid 1px #000000; width: 100%;">
                    <tr>
                        <td valign="top" width="50%" class="TextSmallNormal"><%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><br />
                            4850 East Street Road<br />
                            Suite 220<br />
                            Trevose, PA 19053
                        </td>
                        <td valign="top" width="50%" class="TextSmallNormal">215.364.8253 opt 1<br />
                            215.485.4658 fax<br />
                            www.ceinetwork.com
                        </td>
                    </tr>
                </table>
            </div>

            <!--// LOGO //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="right" style="padding-top: 5px;">
                            <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" /></td>
                    </tr>
                </table>
            </div>

            <!--// Date - Contact Address //-->
            <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td class="TextBold" style="padding-bottom: 10px;"><%=Now.ToString("MMMM d, yyyy")%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal"><%=Me.LetterContactCompanyName%><br />
                            <%=Me.LetterContactName(False)%><br />
                            <%=Me.LetterContactAddress%></td>
                    </tr>
                </table>
            </div>

            <!--// Client Information //-->
            <div style="margin-top: 20px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top" class="TextNormal" style="width: 75px;">RE:</td>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Our Client:</td>
                                    <td class="TextNormal"><%=Me.ClientName%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Our Driver:</td>
                                    <td class="TextNormal"><%=CEI.Application.Common.Framework.BusinessObject.ContactName.GetDisplayName(Me.Helper.Claim.ClaimEmployee.Name, False)%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Our File #:</td>
                                    <td class="TextNormal"><%=Me.ClaimNumber%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Your Insured:</td>
                                    <td class="TextNormal"><%=Me.YourInsuredName%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Your Claim #:</td>
                                    <td class="TextNormal"><%=Me.YourClaimNum%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Date of Loss:</td>
                                    <td class="TextNormal"><%=Me.Helper.DateOfLoss%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Vehicle:</td>
                                    <td class="TextNormal">
                                        <asp:Label runat="server" ID="lblVehicle" /><%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Plate:</td>
                                    <td class="TextNormal">
                                        <asp:Label runat="server" ID="LABEL1" /><%=Me.VehiclePlate%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">VIN:</td>
                                    <td class="TextNormal">
                                        <asp:Label runat="server" ID="LABEL2" /><%=Me.VehicleVin%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal" align="right" style="padding-right: 5px;">Unit #:</td>
                                    <td class="TextNormal">
                                        <asp:Label runat="server" ID="LABEL3" /><%=Me.VehicleUnitNumber%></td>
                                </tr>
                                <tr>
                                    <td class="TextBold" align="right" style="padding-right: 5px;">Loss Amount:</td>
                                    <td class="TextBold"><%=Me.LossAmount%></td>
                                </tr>
                                <tr>
                                    <td class="TextBold" align="right" style="padding-right: 5px;">Location of Loss:</td>
                                    <td class="TextBold"><%=Me.Helper.Claim.AccidentDescription.Address.City.ToString & ", " & Me.Helper.Claim.AccidentDescription.Address.StateAbbreviation.ToString%></td>
                                </tr>
                                <tr>
                                    <td class="TextBold" align="right" style="padding-right: 5px;">CEI Tax ID:</td>
                                    <td class="TextBold">23-2290246</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>

            <!-- Content -->
            <div style="margin-top: 10px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="TextNormal">
                            <b>Dear <%=Me.LetterContactName(False)%>:</b><p />

                            As Subrogees for the above-named client, we are seeking damages in the above amount, which is broken down as follows:<p />
                            <div style="padding-left: 75px">
                                <%=Me.Breakdown()%>
                            </div>
                            <p />

                            <%  If Me.UseInsufficientCopy = False Then%>
                These damages were caused by the sole negligent operation of a motor vehicle owned and /or operated by your insured. Please find the enclosed documents supporting our claim. We are seeking full reimbursement of our client's expenses, as their vehicles are self-insured for collision.<p />
                            <i><u>Please make draft payable to "<%=Me.PayableTo()%>".</u></i>
                            <%  Else%>
                Since we sent you the above referenced subrogation demand, CEI has received payment from your company.  While reviewing the payment (see attached), there was no documentation explaining why the amount we received was less than 100% of our demand.  With that being said, we also reviewed our internal claim notes and there were no phone conversations referencing payment in the amount we received.  At this time we are unable process this payment and are looking for 100% re-imbursement of our client’s damages/expenses.<p />
                            If you have any further information regarding the amount of your payment, please call or fax us at the numbers listed below or make your draft for the difference of your payment for our original demand payable to: <i><u>"<%=Me.PayableTo()%>"</u></i> and reference claim number <b><%=Me.ClaimNumber%></b> on your check.
              <%  End If%>
                            <p />
                            <LW:EditBox runat="server" ID="txtComments" Width="100%" Height="100px" />
                        </td>
                    </tr>
                </table>
            </div>

            <%If Me.DisablePstComment = False AndAlso Me.OrgCountryId = 2 Then%>
            <div style="padding-top: 20px;">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="font: bold 10pt Sans-Serif; padding-bottom: 10px;">Important Retail Sales Tax Information (PST)</td>
                    </tr>
                    <tr>
                        <td style="font: normal 10pt Sans-Serif;">"Important Retail Sales Tax Information (PST) effective 01 July 2010"
              CEI Network Canada Inc is claiming an exemption from Provincial Sales Tax (PST) in the Provinces of Manitoba and Saskatchewan since CEI purchases are for resale to CEI Canadian Clients.
              For Manitoba and Saskatchewan Provinces CEI is responsible for charging, collecting and remitting all PST Provincial Sales Taxes to the appropriate Tax Authority.
              The PST should not be included in estimates or final invoices for the following Provinces.
              <p />
                            <center>
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="4" style="font:bold 9pt Sans-Serif; text-align:center; padding-bottom:5px;">PST Provincial Retail Sales Account Numbers</td>
                  </tr>
                  <tr>
                    <td style="font:normal 8pt arial; padding-right:10px;">Manitoba</td>
                    <td style="font:normal 8pt arial; padding-right:10px;">MB</td>
                    <td style="font:normal 8pt arial; padding-right:10px;">848968863MT0001</td>
                    <td style="font:normal 8pt arial; padding-right:10px;">MB - PST Reporting #</td>
                  </tr>
                  <tr>
                    <td style="font:normal 8pt arial">Saskatchewan</td>
                    <td style="font:normal 8pt arial">SK</td>
                    <td style="font:normal 8pt arial"># 5779228</td>
                    <td style="font:normal 8pt arial">Registered Consumer</td>
                  </tr>
                </table>
              </center>
                        </td>
                    </tr>
                </table>
            </div>
            <%End If%>

            <!-- Signature -->
            <div style="margin-top: 20px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="TextNormal">Sincerely,<p />
                            Team 5<br />
                            CEI Services Loss Recovery Unit<br />
                            1-215-364-8253 opt 1 (phone)<br />
                            1-215-485-4658 (fax)
                        </td>
                    </tr>
                </table>
            </div>

        </td>
    </tr>
    <tr>
        <td height="1px">
            <!--// Footer //-->
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                  <TD Colspan="2" CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright <%=New DateTime().Year.ToString() %>, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%>. Legally Privileged and Confidential. Any unauthorized use or distribution is prohibited.</TD>
          
                </TR>
                <TR>
          
                  <TD CLASS="TextSmallBold">Page 1 of 1</TD>
                  <TD CLASS="TextSmallNormal" style="font:normal 5pt arial;" align="right">Templates/en/us/LR_Insurance.ascx</TD>
                </TR>
              </TABLE>
        </td>
    </tr>
</table>

<script runat="server">
    'This Code is only related to the Insurance and ACV Letters and shouldn't be placed in the subro section.
    Public Const cDisablePstComment As String = "LR.Insurance.DisablePstComment"
    Public Const cInsured As String = "LR.Insurance.Insured"
    Public Const cUseInsufficientCopy As String = "LR.Insurance.UseInsufficientCopy"
  
    Sub OnUpdate(ByVal sender As Object, ByVal e As EventArgs)
        Me.YourInsuredName = cmbInsured.SelectedItem.Text
        Me.UseInsufficientCopy = chkInsufficient.Checked
        Me.DisablePstComment = chkDisablePstComment.Checked
    End Sub

    Sub OnEdit(ByVal sender As Object, ByVal e As EventArgs)
        cmbInsured.Items.FindByText(YourInsuredName).Selected = True
        chkInsufficient.Checked = UseInsufficientCopy
        chkDisablePstComment.Checked = Me.DisablePstComment
    End Sub
    
    Private Sub PageLoad() Handles Me.Load
        If TypeOf Me.Index.LoadedStep Is CEI.Application.Intelliclaim.UserService.LW.Steps.Step3 Then
            AddHandler CType(Me.Index.LoadedStep, CEI.Application.Intelliclaim.UserService.LW.Steps.Step3).OnEdit, AddressOf OnEdit
            AddHandler CType(Me.Index.LoadedStep, CEI.Application.Intelliclaim.UserService.LW.Steps.Step3).OnUpdate, AddressOf OnUpdate
        End If
          
        If cmbInsured.Items.Count = 0 Then
            cmbInsured.Items.Add(Me.YourInsured)
            cmbInsured.Items.Add(Me.BranchName)
            If Not String.Compare(Me.BranchName, Me.ClientName) = 0 Then
                cmbInsured.Items.Add(Me.ClientName)
            End If
        End If
    End Sub
    
    Private Sub PagePreRender() Handles Me.PreRender
        chkInsufficient.Checked = UseInsufficientCopy
    End Sub
          
    Private Property YourInsuredName() As String
        Get
            If Me.Index.ViewState(cInsured) Is Nothing Then Me.Index.ViewState(cInsured) = Me.YourInsured
            Return Me.Index.ViewState(cInsured)
        End Get
        Set(ByVal value As String)
            Me.Index.ViewState(cInsured) = value
        End Set
    End Property
    
    Private Property UseInsufficientCopy() As Boolean
        Get
            If Me.Index.ViewState(cUseInsufficientCopy) Is Nothing Then Me.Index.ViewState(cUseInsufficientCopy) = False
            Return Me.Index.ViewState(cUseInsufficientCopy)
        End Get
        Set(ByVal value As Boolean)
            Me.Index.ViewState(cUseInsufficientCopy) = value
        End Set
    End Property
      
    Private Property DisablePstComment() As Boolean
        Get
            If Me.Index.ViewState(cDisablePstComment) Is Nothing Then Me.Index.ViewState(cDisablePstComment) = False
            Return Me.Index.ViewState(cDisablePstComment)
        End Get
        Set(ByVal value As Boolean)
            Me.Index.ViewState(cDisablePstComment) = value
        End Set
    End Property
  
</script>

