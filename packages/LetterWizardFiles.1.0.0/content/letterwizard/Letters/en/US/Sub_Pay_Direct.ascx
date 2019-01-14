<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.Subrogation" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<!--// PAGE 1 of 3 //-->
<%If MyBase.Index.State = CEI.Application.Intelliclaim.UserService.LW.Index.eState.Edit AndAlso Me.OrgCountryId = 2 Then%>
<table border="0" cellpadding="10" cellspacing="0" style="border:dashed 1px #993333; width:100%; margin-bottom:20px;">
  <tr>
    <td>
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td class="TextBold">Edit Letter Properties:</td>
        </tr>
        <tr>
          <td style="padding-left:20px; padding-top:10px;">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Disable PST Comment:</td>
                <td class="CellValue TextSmallNormal"><asp:checkbox runat="server" ID="chkDisablePstComment" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%  End If%>
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="1">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// Date / To Address //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;"><ASP:LABEL runat=server id="lblDate"></ASP:LABEL></TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblDisplayCompany" /><br><ASP:LABEL runat=server id="lblDisplayName" /><br><ASP:LABEL runat=server id="lblAddress"></ASP:LABEL></TD>
            </TR>                 
        </TABLE> 
    </DIV>
    
    <!--// Date / To Address //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" style="width:500px;">
            <TR>
                <TD valign="top" style="font:normal 10pt Sans-Serif; width:75px;">RE:</TD>
                <TD valign="top" style="font:normal 10pt Sans-Serif;">
                  <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our Client:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat="server" id="lblOrg1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our Driver:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat="server" id="lblDriver1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Our File #:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat="server" id="lblClaim1"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Date of Loss:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat="server" id="lblDOL"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:normal 10pt Sans-Serif; padding-right:25px;">Vehicle:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat=server id="lblVehicle" /><%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Loss Amount:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><ASP:LABEL runat="server" id="lblLossAmount"></ASP:LABEL></TD>
                    </TR>
                    <TR>
                      <TD align=right style="font:bold 10pt Sans-Serif; padding-right:25px;">Location of Loss:</TD>
                      <TD style="font:normal 10pt Sans-Serif;"><%=Me.Helper.Claim.AccidentDescription.Address.City.ToString & ", " & Me.Helper.Claim.AccidentDescription.Address.StateAbbreviation.ToString%></TD>
                    </TR>
                  </TABLE>
                </TD>
            </TR>                 
        </TABLE>
    </DIV>



    <!--// Content //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:bold 10pt Sans-Serif; padding-bottom:10px;">Dear <ASP:LABEL runat=server id="lblContact"></ASP:LABEL>:</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                  CEI is writing you in regards to the above mentioned loss in which a vehicle that you either owned and/or operated was involved in an accident with <ASP:LABEL runat=server id="lblDriver2" /> who is an employee of <ASP:LABEL runat=server id="lblOrg2" />.<p />

                  You are receiving this letter for one of the following reasons:<p />
                  <ul>
                    <li>You have agreed to pay for our client’s damage personally instead of turning a claim in to your insurance carrier.</li>
                    <li>We have unsuccessfully attempted to contact you to obtain your insurance information that was in affect at the time of loss and therefore are billing you direct for our client’s damages</li>
                    <li>Or you have agreed to pay for our client’s damages because you were not insured at the time of the loss.</li>
                  </ul>

                  <%If Me.DisablePstComment = False AndAlso Me.OrgCountryId = 2 Then%>
                    Please send a check or money order in the above listed "<b>Loss Amount</b>" payable to "<b><%=Me.PayableTo()%></b>" and mail it to the above listed address.
                  <%Else%>
                    Please send a check or money order in the above listed "<b>Loss Amount</b>" payable to "<b><%=Me.PayableTo()%></b>" and mail it to the above listed address.  If you wish to pay by credit card, you must call CEI to process your payment with our Financial Administration department.
                  <%End If%>

                  <LW:EditBox runat="server" id="Txt_Comments" width="100%" height="100px" />
                </TD>
            </TR>
        </TABLE>
    </DIV>

    <%If Me.DisablePstComment = False AndAlso Me.OrgCountryId = 2 Then%>
    <div style="padding-top:20px;">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td style="font:bold 10pt Sans-Serif; padding-bottom:10px;">Important Retail Sales Tax Information (PST)</td>
        </tr>
        <tr>
          <td style="font:normal 10pt Sans-Serif;">
            "Important Retail Sales Tax Information (PST) effective 01 July 2010"
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
    <!--// Footer //-->
    <DIV style="padding-top:20px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif; padding-bottom:10px;">Sincerely,</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">Team 5</TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;"><%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%></TD>
            </TR>
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">866.894.0386, Opt. #1</TD>
            </TR>            
        </TABLE>
    </DIV>
</LW:PAGE>

<script runat="server">
  Public Const cDisablePstComment As String = "LR.PayDirect.DisablePstComment"
  
  Sub OnUpdate(ByVal sender As Object, ByVal e As EventArgs)
    Me.DisablePstComment = chkDisablePstComment.Checked
  End Sub

  Sub OnEdit(ByVal sender As Object, ByVal e As EventArgs)
    chkDisablePstComment.Checked = Me.DisablePstComment
  End Sub
    
  Private Sub PageLoad() Handles Me.Load
    If TypeOf Me.Index.LoadedStep Is CEI.Application.Intelliclaim.UserService.LW.Steps.Step3 Then
      AddHandler CType(Me.Index.LoadedStep, CEI.Application.Intelliclaim.UserService.LW.Steps.Step3).OnEdit, AddressOf OnEdit
      AddHandler CType(Me.Index.LoadedStep, CEI.Application.Intelliclaim.UserService.LW.Steps.Step3).OnUpdate, AddressOf OnUpdate
    End If
  End Sub
    
  Private Sub PagePreRender() Handles Me.PreRender
    chkDisablePstComment.Checked = Me.DisablePstComment
  End Sub
  
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