<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<%
    Const TemplatePath As String = "Templates/en/us/HP/HP_No_Damage.ascx"
    Dim HeaderA As String = Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.") & "<br/>4850 E. Street Road<br/>Trevose, PA 19053-6646"
    Const HeaderB As String = "215-364-5600 phone<br/>www.ceinetwork.com"
%>

<%  If MyBase.Index.State = CEI.Application.Intelliclaim.UserService.LW.Index.eState.Edit Then%>
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
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Incident Type:</td>
                <td class="CellValue TextSmallNormal"><asp:DropDownList CssClass="TextSmallNormal" ID="cmbIncidentType" runat="server" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%  End If%>

<!-- Start of Letter -->
<table border=0 cellpadding=0 cellspacing=0 style="page-break-after: always;" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <!--// COVER PAGE //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=HeaderA%>
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=HeaderB%>
            </td>
          </tr>
        </table>
      </div>

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="right" style=padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" /></td>
          </tr>
        </table>
      </div>
      
      <!--// CONTENT //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal" align="left" style="padding-top:5px;">
              <%=Now.ToString("MMMM dd, yyyy")%><p/>
              <%=MyBase.ContactName%><p/>

              CEI has received a confirming estimate that verifies there is no damage to the HP fleet vehicle as a result of the accident described below:<p/>

              <table border="0" cellpadding="0" cellspacing="0" style="padding-left:20px;">
                <tr>
                  <td class="TextNormal">Unit Number:</td>
                  <td class="TextNormal"><%=MyBase.Helper.Vehicle.ClientVehNo%></td>
                </tr>
                <tr>
                  <td class="TextNormal">HP Assigned Driver:</td>
                  <td class="TextNormal"><%=MyBase.ContactName%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Driver at Time of Accident:</td>
                  <td class="TextNormal"><%=Me.Driver%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Date of Loss:</td>
                  <td class="TextNormal"><%=MyBase.Helper.DateOfLoss%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Claim Number:</td>
                  <td class="TextNormal"><%=MyBase.ClaimNumber%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Type of Accident/Incident:</td>
                  <td class="TextNormal"><%=Me.IncidentType(1033)%></td>
                </tr>
              </table>
              <p/>
              On behalf of HP North America Fleet, this letter is to inform you that your obligation has now been fulfilled.  Please remember to drive safely in the future, and to avoid accidents whenever possible.<p/>
              For questions regarding this accident/incident, please contact CEI at <b>hp@ceinetwork.com</b> or <b>215-485-4284</b><p/>
              Sincerely,<br>
              CEI Services  
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
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=TemplatePath%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 1</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<script runat="server">
    Private Sub _OnUpdate(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnUpdate
        Me.SelectedIncidentType = cmbIncidentType.SelectedIndex
    End Sub
    
    Private Sub _OnEdit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnEdit
        If SelectedIncidentType > -1 Then cmbIncidentType.SelectedIndex = Me.SelectedIncidentType
    End Sub
    
    Private Sub _Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not cmbIncidentType Is Nothing Then
            If cmbIncidentType.Items.Count = 0 Then cmbIncidentType.Items.AddRange(Me.IncidentTypes_1033)
        End If
    End Sub
</script>