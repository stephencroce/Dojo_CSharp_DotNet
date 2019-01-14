<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="ceiwcdlg" Namespace="CEI.Application.Common.Web.UI.WebControls.Dialogs" Assembly="CEI.Application.Common.Web" %>
<%@ Register TagPrefix="uc1" TagName="clmStff" Src="ucClaimStuff.ascx"  %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<% 
    Const TemplatePath As String = "Templates/en/us/AstraZeneca/PastDue.ascx"
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

             <p class="TextXXLargeBold">Memorandum</p>
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
                      <td class="TextNormal">Preventable Accident/Incident – Past Due Notice</td>
                    </tr>
              </table>

              <p/>

By letter dated <%=Me.FirstLetterSentDt.DisplayDate()%>, CEI contacted you requesting payment of a preventable accident/incident fee per the AstraZeneca Motor Vehicle Safety and 
Usage Policy. In our prior correspondence, we informed you that a <%=Me.Payment%>, was due on or before <%=Me.FirstLetterSentDtAdd(30).DisplayDate()%>. To date, we do not show receipt of payment.
                <p/>
<b>IMPORTANT: Non receipt of payment by <%=Me.NextDueDate.DisplayDate()%>, requires us to escalate collection to AstraZeneca Fleet Department per AstraZeneca’s Fleet Policy. 
    If you have submitted payment and believe you are receiving this notice in error, please contact CEI Services at 215-485-4560 immediately upon receipt of 
    this letter.</b>

                <p/>
If you have not submitted payment, we recommend you send the payment by courier, and contact CEI at 215-485-4560 with tracking information by close of 
                business on  <%=Me.NextDueDate.DisplayDate()%>. Please forward a check or money order in the amount of <%=Me.Payment%> made payable to "CEI Services". 
                Please reference claim number  <%=Me.ClaimNumber%> on your payment:

<p />
    <span style="text-align:center;width:100%">
        <b>CEI Services<br/>
        4850 E. Street Road, Suite 300<br/>
        Trevose, PA  19053</b>
    </span>
<p/> 

<p/> 
    <uc1:clmStff ID="stuff" runat="server" />
<p/>

AstraZeneca Fleet drivers are responsible for all vehicle payment obligations as explained in the AstraZeneca Motor Vehicle Safety and Usage Policy.               
We ask you to ensure your payment obligation is satisfied. This is your final notice that payment has not been received. If payment in full is not 
received by <%=Me.NextDueDate.DisplayDate()%>, AstraZeneca will pursue an alternative method of collection and determine whether disciplinary action, up to and 
including termination, is warranted.

If you have any questions, please contact CEI Services at 215-485-4560, or Driverservices.astrazeneca@ceinetwork.com.


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

