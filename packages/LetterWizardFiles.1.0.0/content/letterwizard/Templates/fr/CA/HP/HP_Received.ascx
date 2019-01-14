<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<%
    Const TemplatePath As String = "Templates/fr/CA/HP/HP_Received.ascx"
    Const HeaderA As String = "The CEI Group, Inc.<br/>4850 E. Street Road<br/>Trevose, PA 19053-6646"
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
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Received Payment:</td>
                <td class="CellValue TextSmallNormal"><asp:RadioButton GroupName="ReceivedType" CssClass="TextSmallNormal" ID="optPayment" Checked="true" runat="server" /></td>
              </tr>
              <tr>
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Received Affidavit:</td>
                <td class="CellValue TextSmallNormal"><asp:RadioButton GroupName="ReceivedType" CssClass="TextSmallNormal" ID="optAffidavit" runat="server" /></td>
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
            <td align="right" style=padding-top:5px;"><img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif"%>" /></td>
          </tr>
        </table>
      </div>
      
      <!--// CONTENT //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal" align="left" style="padding-top:5px;">
              <%=Now.ToString(DateFormat, Me.Culture)%><p/>
              <%=MyBase.ContactName%><p/>

 	      Pour la traduction en Anglais, s’il vous plaît regardez au-dessous. <p/> 
              <%  If ReceivedPayment Then%>
                Cette Lettre est pour aviser que nous avons reçu votre paiement de <b><%=Me.Payment%></b> pour le numéro réclamation <b><%=MyBase.ClaimNumber%></b>.<p/>
              <%Else%>
                Cette letter est pour aviser que nous avons reçu votre certification signée pour le numéro réclamation <b><%=MyBase.ClaimNumber%></b> et avisant que vous n’êtes pas responsable du déductible de <b><%=Me.Payment%></b>.<p/>
              <%End If%>
              Tu faire maintenant accomplir votre obligation, par politique de flotte de HP Amérique du Nord, section 6 - de participant et Sûreté de véhicule, qui peut être accédée chez http://hp.gefleet.com. <p/>        
              Si vous avez d’autre question, sil vous rappelez nous au <b>215-485-4284</b> ou par E-mail <b>hp@ceinetwork.com</b>.<p/>
              
              Cordialement,<br/>
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
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, The CEI Group, Inc. Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=TemplatePath%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 2</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!-- English Version -->
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
            <td align="right" style=padding-top:5px;"><img src="<%= %>"/Images/Logos/IC.gif"%>" /></td>
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

              <%  If ReceivedPayment Then%>  
                This letter is to notify you that we have received your payment of <b><%=Me.Payment%></b> for Claim <b><%=MyBase.ClaimNumber%></b>.<p/>
              <%Else%>
                This letter is to notify you that we have received your signed Certification for Claim <b><%=MyBase.ClaimNumber%></b> so you will not be responsible for the deductible payment of <b><%=Me.Payment%></b>.<p/>
              <%End If%>              
              You have now fulfilled your obligation, per the HP North America Fleet Policy, Section 6- Participant &amp; Vehicle Safety, which can be accessed at http://hp.gefleet.com. <p/>
              If you have any further questions, please contact us at <b>215-485-4284</b> or <b>hp@ceinetwork.com</b>.<p/>

              Sincerely,<br/>
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
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, The CEI Group, Inc. Proprietary and Confidential.</td>
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
    Dim Culture As New System.Globalization.CultureInfo(3084)
    Dim DateFormat As String = "dd MMMM yyyy"
    
    Private Sub _OnUpdate(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnUpdate
        ReceivedPayment = optPayment.Checked
    End Sub
    
    Private Sub _OnEdit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnEdit
        optPayment.Checked = ReceivedPayment
        optAffidavit.Checked = Not ReceivedPayment
    End Sub
    
    Protected Sub _PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        _OnEdit(sender, e)
    End Sub
</script>