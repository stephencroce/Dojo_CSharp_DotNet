<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="ceiwcdlg" Namespace="CEI.Application.Common.Web.UI.WebControls.Dialogs" Assembly="CEI.Application.Common.Web" %>
<%@ Register TagPrefix="uc1" TagName="clmStff" Src="ucClaimStuff.ascx"  %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<% 
    Const TemplatePath As String = "Templates/en/us/AstraZeneca/FirstPreventable.ascx"
    Dim HeaderA As String = Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.") & "<br/>4850 E. Street Road<br/>Trevose, PA 19053-6646"
    Const HeaderB As String = "215-485-4360 phone<br/>www.ceinetwork.com"
    Me.DPTemplateID = 31
%>

<%  If MyBase.Index.State = CEI.Application.Intelliclaim.UserService.LW.Index.eState.Edit Then%>
<table border="0" cellpadding="10" cellspacing="0" style="border:dashed 1px #993333; width:100%; margin-bottom:20px;">
  <tr>
    <td>
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextBold">Edit Letter Properties:</td>
        </tr>
         <tr>
          <td style="padding-left:20px; padding-top:10px;">
            <table border="0" cellpadding="0" cellspacing="0" width="100%" >
              <tr>
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">&quot;Memorandum CC:&quot; </td>
                <td class="CellValue TextSmallNormal"><asp:TextBox CssClass="TextSmallNormal" ID="txtCCmemoData" runat="server" Width="100%" /></td>
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
<!--// COVER PAGE //-->
<table border="0" cellpadding="0" cellspacing="0" style="page-break-after: always;" class="<%=me.PageSizeCss%>">
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
            <td align="right" style=padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>"></td>
          </tr>
        </table>
      </div>
      
      <!--// CONTENT //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal" align="left" style="padding-top:5px;">
              <p/>

             <table border="0" cellpadding="0" cellspacing="0" style="padding-left:0px;">
                    <tr>
                      <td class="TextBold">Date:&nbsp;&nbsp; </td>
                      <td class="TextNormal"><%=Now.ToString("MMMM dd, yyyy")%></td>
                    </tr>
                    <tr>
                      <td class="TextBold">To:&nbsp;&nbsp; </td>
                      <td class="TextNormal"><%=Me.Employee%></td>
                    </tr>
                    <tr>
                      <td class="TextBold">Cc:&nbsp;&nbsp; </td>
                      <td class="TextNormal"><%=Me.txtCCmemoData.Text%></td>
                    </tr>
                    <tr>
                      <td class="TextBold">From:&nbsp;&nbsp; </td>
                      <td class="TextNormal">Driverservices.astrazeneca@ceinetwork.com</td>
                    </tr>
                    <tr>
                      <td class="TextBold">Re:&nbsp;&nbsp; </td>
                      <td class="TextNormal">1st Preventable Accident / Incident</td>
                    </tr>
              </table>

              <p/>
*** Effective immediately, the <b>Preventable Collision Deductible Program</b> has started and any driver with an accident/incident as of
   November 1, 2014 will be financially responsible for a deductible per the AstraZeneca Motor Vehicle Safety and Usage Policy. ***
<p/>
On <%=Me.Helper.DateOfLoss%>, you had an accident deemed to be your first preventable accident/incident. In accordance with the AstraZeneca Motor Vehicle 
                Safety and Usage Policy, your financial responsibility for the first preventable accident/incident is<%=Me.Payment%>. You have 30 days from the 
                date of this letter to make payment.
<p/>
The information regarding your assigned fleet vehicle accident/incident is outlined below:

<p/> 
    <uc1:clmStff ID="stuff" runat="server" />
<p/>

Please forward a check in the amount of <b> <%=Me.Payment%></b> prior to <%=Me.NextDueDate.DisplayDate()%>, made payable to <b>"CEI Services"</b>. 
Please reference claim number <b><%=Helper.Claim.ClaimID%></b> on your payment:

<p />
    <span style="text-align:center;width:100%">
        <b>CEI Services<br/>
        4850 E. Street Road, Suite 300<br/>
        Trevose, PA  19053</b>
    </span>
<p/> 

You may receive additional correspondence from the AstraZeneca Fleet Department regarding this accident and additional disciplinary action.
For questions regarding this accident/incident, please contact CEI at <b>Driverservices.astrazeneca@ceinetwork.com</b> or <b>215-485-4560</b>.

<p/>
Sincerely,
<p/>
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
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2015, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=TemplatePath%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of <%=IIf(Me.UseAffidavit, "2", "1")%></td>
        </tr>
      </table>
    </td>
  </tr>
</table>



<script runat="server">
    
    Private Sub _OnUpdate(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnUpdate
        Me.CCtext = txtCCmemoData.Text
    End Sub
    
    Private Sub _OnEdit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnEdit
       ' If SelectedIncidentType > -1 Then cmbIncidentType.SelectedIndex = Me.SelectedIncidentType
       ' chkAffidavit.Checked = Me.UseAffidavit
       
    End Sub
    
    Private Sub _Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.DPTemplateID = 31
    End Sub
</script>

