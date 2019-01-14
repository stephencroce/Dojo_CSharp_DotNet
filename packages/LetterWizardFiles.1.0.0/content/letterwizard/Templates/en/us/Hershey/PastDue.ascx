<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="ceiwcdlg" Namespace="CEI.Application.Common.Web.UI.WebControls.Dialogs" Assembly="CEI.Application.Common.Web" %>
<%@ Register TagPrefix="uc1" TagName="clmStff" Src="ucClaimStuff.ascx"  %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<% 
    Const TemplatePath As String = "Templates/en/us/Hershey/PastDue.ascx"
    Dim HeaderA As String = Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.") & "<br/>4850 E. Street Road<br/>Trevose, PA 19053-6646"
    Const HeaderB As String = "215-485-4360 phone<br/>www.ceinetwork.com"
    Me.DPTemplateID = 33
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
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;"> </td>
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
            <td align="right" style=padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" /></td>
          </tr>
        </table>
      </div>
  
<p>
<%=Date.Now.ToShortDateString()%>
</p>    

<p>
Dear <%=Me.Employee%>
</p>    

By letter dated <%=Me.FirstLetterSentDt.DisplayDate.ToString%>, CEI contacted you requesting payment of a preventable 
accident/incident fee per The Hershey Company’s Rules of the Road booklet, Insurance and Accidents section – Accident Fee, 
which can be accessed under the Policies &amp; Procedures 
section of the Sales Department page on the Company’s Intranet.  In our prior correspondence, we informed you 
that a payment of <%=Me.Payment%> was 
due on or before <%=Me.FirstLetterSentDtAdd(30).DisplayDate.ToString%>. To date, we do not show receipt of payment. 
<p/>
<b><u>IMPORTANT</u>: Non receipt of payment by <%=Me.FirstLetterSentDtAdd(30).DisplayDate.ToString%>, requires us to escalate 
collection to the Hershey Fleet Department per Hershey’s Fleet policy.  
If you have submitted payment and believe you are receiving this notice in error, contact CEI Services 
at 215-485-4370 immediately upon receipt of this letter.</b>
<p/> 
If, you have not submitted payment, we recommend you send the payment by courier, and contact CEI at 215-485-4370 
with tracking information by close of business on <%=Date.Now.AddDays(3).ToShortDateString()%>. Payment in the 
amount of <%=Me.Payment%> should be made payable to <%=Me.PayableTo%> and submitted to the following address:

<p />
    <span style="text-align:center;width:100%">
        <b><%=Me.PayableTo%><br/>
        4850 E. Street Road, Suite 300<br/>
        Trevose, PA  19053</b>
    </span>
<p/> 

<p/>
<uc1:clmStff ID="stuff" runat="server" />
<p/>

Hershey Fleet drivers are responsible for all vehicle payment obligations as explained in the Company’s 
policy, per Hershey’s Rules of the Road booklet, Insurance and Accidents Section – Accident Fee. We ask you 
to ensure your payment obligation is satisfied. <b>The Hershey Company will not reimburse you for these payments.</b>
This is your final notice that payment has not been received.  
If payment in full is not received by <%=Date.Now.AddDays(3).ToShortDateString()%>, the Company will pursue an 
alternative method of collection and 
determine whether disciplinary action, up to and including termination, is warranted.

<p/>
If you have questions, please contact CEI Services at <b>215-485-4370</b>, or <b>hershey@ceinetwork.com</b>.
<p/>
Sincerely,
<p/>
CEI Services



        </td>
      </tr>
    </table>
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

