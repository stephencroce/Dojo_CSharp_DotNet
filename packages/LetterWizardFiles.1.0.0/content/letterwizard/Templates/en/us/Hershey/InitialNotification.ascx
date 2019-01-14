<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="ceiwcdlg" Namespace="CEI.Application.Common.Web.UI.WebControls.Dialogs" Assembly="CEI.Application.Common.Web" %>
<%@ Register TagPrefix="uc1" TagName="clmStff" Src="ucClaimStuff.ascx"  %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<% 
    Const TemplatePath As String = "Templates/en/us/Hershey/InitialNotification.ascx"
    Dim HeaderA As String = Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.") & "<br/>4850 E. Street Road<br/>Trevose, PA 19053-6646"
    Const HeaderB As String = "215-485-4360 phone<br/>www.ceinetwork.com"
    Me.DPTemplateID = 32
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

As an agent for The Hershey Company, CEI has been informed of an accident/incident in which you were involved while operating your 
Hershey fleet vehicle. This accident/incident falls within the Company’s guidelines of a preventable accident/incident as provided 
in the Rules of the Road booklet, Driver Licensing and Qualifications Section – Preventable Accidents.  As a result, you are 
responsible for certain payments as outlined below. <b>The Hershey Company will not reimburse you for these payments.</b> 
You may access the guidelines in the Rules of the Road booklet, Insurance 
and Accidents section – Accident Fee under the &quot;Policies &amp; Procedures&quot; section of the Sales Department page on the 
Company’s Intranet.

<p/>
Specifically, per the Hershey Fleet Policy, you are obligated to remit payment for the accident fee.  
The information regarding your assigned fleet vehicle accident/incident is outlined below:

<p/> 
<uc1:clmStff ID="stuff" runat="server" />
<p/>


Consistent with the Company’s guidelines and procedures, please forward a check or money order in the amount of <b><%=Me.Payment%></b> prior 
to <%=Me.FirstLetterSentDtAdd(30).DisplayDate.ToString%> , made payable to <b>&quot;CEI Services&quot;</b>.  Please reference claim number <b><%=Me.ClaimNumber%></b> on your payment:

<p />
    <span style="text-align:center;width:100%">
        <b>CEI Services<br/>
        4850 E. Street Road, Suite 300<br/>
        Trevose, PA  19053</b>
    </span>
<p/> 

Failure to remit payment in a timely manner could result in further collection or disciplinary action, up to and including termination of employment. 
If you have questions regarding this accident/incident or the information contained in this letter, please contact CEI via electronic 
mail (<b>hershey@ceinetwork.com</b>) or via telephone (<b>215-485-4370</b>).

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

