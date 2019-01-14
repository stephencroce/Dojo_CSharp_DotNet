<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<%
    Const TemplatePath As String = "Templates/fr/CA/HP/HP_3rd_Deductible.ascx"
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
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Incident Type:</td>
                <td class="CellValue TextSmallNormal"><asp:DropDownList CssClass="TextSmallNormal" ID="cmbIncidentType" runat="server" /></td>
              </tr>
              <tr>
                <td class="CellLabel TextSmallNormal" valign="middle" align="right" style="padding-right:5px;">Include Affidavit:</td>
                <td class="CellValue TextSmallNormal"><asp:CheckBox CssClass="TextSmallNormal" ID="chkAffidavit" runat="server" /></td>
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
              <%=Now.ToString(Me.DateFormat, Me.Culture)%><p/>
              <%=MyBase.ContactName%><p/>

	      Pour la traduction en Anglais, s�il vous pla�t regardez au-dessous. <p/> 

              <%  If Me.UseAffidavit Then%>
                CEI a d�j� communiqu� avec vous sur plusieurs occasion au sujet de la soumission d'un document de certification, conform�ment � la Politique de v�hicule de parc nord-am�ricain HP, article 6 - S�curit� du v�hicule et participant, laquelle vous pouvez consulter sur http://hp.gefleet.com.
                <p/>
                <span class="TextBold"><u>IMPORTANT</u>: Puisque nous n'avons pas re�u votre document de certification pour cet accident/incident, vos privil�ges de carte d�essence seront annul�s dans les prochaines 48 heures, conform�ment � la Politique de v�hicule de parc HP.  D�s que le formulaire de certification sign� sera re�u, GE sera avis� d�envoyer une nouvelle carte d�essence .  Si vous avez d�j� soumis le document de certification, veuillez communiquer avec CEI Services au (215) 485-4284.</span>
                <p/>
                Si vous n�avez pas soumis votre document de certification, nous vous recommandons de retourner le document sign� <b>par l�une des m�thodes suivantes </b>:               
                <p/>
                   <table border="0" cellpadding="0" cellspacing="0" style="padding-left:20px;">
                    <tr>
                      <td class="TextNormal">T�l�copieur:</td> 
                      <td class="TextNormal">215-485-4284</td> 
                    </tr>
                    <tr>
                      <td class="TextNormal">Courriel/Scan :</td> 
                      <td class="TextNormal">hp@ceinetwork.com</td> 
                    </tr>
                  </table>
                    <p/> 
                    
                   Si vous avez des questions, veuillez contacter CEI services au 215-485-4284, ou hp@ceinetwork.com.
                    <p/> 

                    Cordialement,
                    CEI Services
            
              <%  Else%>
                CEI a d�j� communiqu� avec vous sur plusieurs occasion au sujet de la soumission d'un document de certification, conform�ment � la Politique de v�hicule de parc nord-am�ricain HP, article 6 - S�curit� du v�hicule et participant, laquelle vous pouvez consulter sur http://hp.gefleet.com.
                <p/>
                <span class="TextBold"><u>IMPORTANT</u>: Puisque nous n�avons toujours pas re�u votre paiement, vos privil�ges de carte d�essence seront annul�s dans les prochaines 48 heures, conform�ment � la Politique de v�hicule de parc HP. D�s que votre paiement sera re�u, GE sera avis� d�envoyer une nouvelle carte d�essence. </span>
                <p/>
                <b>Si vous avez d�j� soumis votre paiement, veuillez communiquer avec CEI Services au (215) 485-4284.</b>
                <p/>   
                Si vous n�avez pas soumis votre paiement, nous vous recommandons d�envoyer le paiement par services de messagerie et de communiquer avec CEI au (215) 485-4353 avec les informations de suivi en main dans les prochaines 24 heures afin que votre carte d�essence ne soit pas d�sactiv�e.   Le paiement au montant de <%=Me.Payment%> devrait �tre � l�ordre de  CEI Services et soumis � l�adresse suivante:           
                <p/>   

                  <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA 19053</b>
                  </span>
                  <p/>
                
                <b>Si vous avez des questions, nous vous invitons � communiquer avec CEI Services � (215) 485-4284 ou hp@ceinetwork.com.</b>
                   <p/>
                Cordialement,
                CEI Services
                 
              <%  End If%>


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
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of <%=IIf(Me.UseAffidavit, "2", "1")%></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!-- Page 2 -->
<%  If Me.UseAffidavit Then%>
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


              <!--// Title //-->
              <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>IMPORTANT � VEUILLEZ LIRE ATTENTIVEMENT</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">Les conducteurs autoris�s de v�hicules de parc GE qui sont impliqu�s dans un accident ou incident � non-responsable �, sans aucune occasion de co�ts de recouvrement pour dommages pour HP doivent, conform�ment � la Politique de parc de v�hicule HP:</td>
                  </tr>   
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ul>
                        <li style="TEXT-ALIGN: justify">Signaler l�accident/l�incident et aviser leur superviseur ou directeur de l��v�nement./li>
                        <li style="TEXT-ALIGN: justify">Obtenir les coordonn�es du tiers lorsque possible.</li>
                        <li style="TEXT-ALIGN: justify">Remplir un rapport de police s�il n�a pas �t� obtenu au moment de l��v�nement.</li>
                        <li style="TEXT-ALIGN: justify">Suivre les instructions fournies par Gestion de parc de v�hicule pour obtenir un estim� des r�parations des dommages au v�hicule de parc.</li>
                        <li style="TEXT-ALIGN: justify">Remplir la certification (voir ci-dessous) et retourner � CEI par l�une des m�thodes suivantes:<br/>Courriel/Balayage - <b>hp@ceinetwork.com</b><br/>T�l�copieur - <b>215-485-4667</b></li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>CERTIFICATION</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">Certification de l�employ� HP concernant l�incident du v�hicule du <b><%=Me.Helper.Claim.DateOfLoss.ToDateString(Me.DateFormat, Me.Culture)%></b>, Num�ro de r�clamation de CEI <b><%=MyBase.ClaimNumber%></b></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ol>
                        <li style="TEXT-ALIGN: justify">L�information que j�ai fournie concernant l�accident ou l�incident impliquant le v�hicule de parc HP qui m��tait attribu� est vraie, pr�cise et conforme en tout point avec mes obligations de signalement sous la Politique de parc de v�hicule nord-am�ricaine;</li>
                        <li style="TEXT-ALIGN: justify">Toutes d�clarations que j�ai faites lors de l�avis initial de perte sont vraies et rapportent pr�cis�ment se qui s�est vraiment produit;</li>
                        <li style="TEXT-ALIGN: justify">J�ai fourni toutes les informations que je poss�de concernant l�occurrence afin d�assister HP dans le recouvrement des co�ts de r�parations du v�hicule;</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:20px;">Je comprends que toutes fausses repr�sentations des faits concernant cet incident est une violation des normes de conduite commerciale de HP. Je certifie sous peine de parjure que les d�clarations pr�c�dentes sont vraies et pr�cises.</td>
                  </tr>
                </table>
              </div>
              
              <div>
                <table border="0" cellpadding="0" cellspacing="0" style="width:500px;">
                  <tr>
                    <td class="TextNormal">Signature:</td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal"><nobr>Nom (imprimerie):</nobr></td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal">Adresse:</td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal">Date:</td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                </table>
              </div>
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
          <td colspan="2" class="TextSmallBold" align="center">Page 2 of 2</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%  End If%>

<!-- English Version  -->
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
              <%=Now.ToString("MMMM dd, yyyy")%><p/>
              <%=MyBase.ContactName%><p/>

              <%  If Me.UseAffidavit Then%>
                CEI previously contacted you on three separate occasions regarding the submittal of a Certification document, per the HP North America Fleet Policy, Section 6 � Participant & Vehicle Safety, which can be accessed at http://hp.gefleet.com.
                <p/>
                <span class="TextBold"><u>IMPORTANT</u>: Since we have not received your Certification document for this accident/incident, your fuel card privileges are scheduled for cancellation within 48 hours, per HP�s Fleet Policy.  Once the signed Certification form is received, GE will be notified to send out a new fuel card.  If you have already submitted the Certification document please contact CEI Services at (215) 485-4284.</span>
                <p/>
                If you have not submitted your certification, we recommend you return the signed document via fax or email:
                <p/>

                  <table border="0" cellpadding="0" cellspacing="0" style="padding-left:20px;">
                    <tr>
                      <td class="TextNormal"><u>Fax</u>:</td> 
                      <td class="TextNormal">215-485-4667</td> 
                    </tr>
                    <tr>
                      <td class="TextNormal"><u>Scan/Email</u>:</td> 
                      <td class="TextNormal">hp@ceinetwork.com</td> 
                    </tr>
                  </table>
                  <p/>
              <%  Else%>
                CEI previously contacted you on three separate occasions requesting payment of a chargeable accident/incident fee for Claim <%=MyBase.ClaimNumber%> per the HP North America Fleet Policy, Section 6 � Participant &amp; Vehicle Safety, which can be accessed at http://hp.gefleet.com. 
                <p/>
                <span class="TextBold"><u>IMPORTANT</u>: Since we have not received your payment, your fuel card privileges are scheduled for cancellation within 48 hours, per HP�s Fleet policy. Once payment is received, GE will be notified to send out a new fuel card. </span>
                <p/>
                <b>If you have submitted payment please contact CEI Services at <nobr>215-485-4284</nobr></b>
                <p/>
                If you have not submitted your payment, we recommend you send the payment by courier, and contact CEI at <nobr>215-485-4284</nobr> with tracking information within the next 24 hours. Payment in the amount of <%=Me.Payment%>, should be made payable to <b>CEI Services</b> and submitted to the following address:
                <p/>

                  <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA 19053</b>
                  </span>
                  <p/>
              <%  End If%>


                If you have any questions, please contact us at 215-485-4284 or hp@ceinetwork.com.
                <p/>
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
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2008, The CEI Group, Inc. Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right"><%=TemplatePath%></td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of <%=IIf(Me.UseAffidavit, "2", "1")%></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!-- Page 2 -->
<%  If Me.UseAffidavit Then%>
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


              <!--// Title //-->
              <div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>IMPORTANT � PLEASE READ CAREFULLY</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">Authorized drivers of HP Fleet Vehicles who are involved in a "Non-Fault" Accident or Incident, without any opportunity for HP to recover damage costs must per HP fleet policy:</td>
                  </tr>   
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ul>
                        <li style="TEXT-ALIGN: justify">Report accident/incident, and notify their manager of the event.</li>
                        <li style="TEXT-ALIGN: justify">Obtain third party information whenever possible.</li>
                        <li style="TEXT-ALIGN: justify">File a Police Report if one was not obtained at the time of the event.</li>
                        <li style="TEXT-ALIGN: justify">Follow instructions provided by Fleet Management to obtain an estimate for the repair of the damages to the fleet vehicle.</li>
                        <li style="TEXT-ALIGN: justify">Complete Certification (see below) and return to CEI through one of the following methods:<br />E-mail/Scan � <b>hp@ceinetwork.com</b><br />Fax - <b>215-485-4667</b></li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>CERTIFICATION</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">HP Employee Certification Regarding Vehicle Incident of <b><%=MyBase.Helper.DateOfLoss%></b>, CEI Claim Number <b><%=MyBase.ClaimNumber%></b></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ol>
                        <li style="TEXT-ALIGN: justify">The information I have provided regarding the accident or incident involving the HP fleet vehicle assigned to me is truthful, accurate, and fully complies with my reporting obligations under the North America Fleet Policy;</li>
                        <li style="TEXT-ALIGN: justify">Any statements I provided in the initial loss notification are true and accurate accounts of what actually occurred;</li>
                        <li style="TEXT-ALIGN: justify">I have provided all information I have about the occurrence in order to assist HP in recovering costs of vehicle repair;</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:20px;">I understand that misrepresentation of the facts regarding this incident is a violation of HP�s Standards of Business Conduct. I certify under penalty of perjury that the foregoing statements are true and accurate.</td>
                  </tr>
                </table>
              </div>
              
              <div>
                <table border="0" cellpadding="0" cellspacing="0" style="width:500px;">
                  <tr>
                    <td class="TextNormal">Signature:</td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal"><nobr>Name (type):</nobr></td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal">Date:</td>
                    <td class="TextNormal" style="padding-top:5px; width:100%;">
                      <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td class="SquareTextBox">&nbsp;</td></tr></table>
                    </td>
                  </tr>
                </table>
              </div>
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
          <td colspan="2" class="TextSmallBold" align="center">Page 2 of 2</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%  End If%>

<script runat="server">
  Dim Culture As New System.Globalization.CultureInfo(3084)
  Dim DateFormat As String = "dd MMMM yyyy"
      
  Private Sub _OnUpdate(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnUpdate
    Me.SelectedIncidentType = cmbIncidentType.SelectedIndex
    Me.UseAffidavit = chkAffidavit.Checked
  End Sub
      
  Private Sub _OnEdit(ByVal sender As Object, ByVal e As EventArgs) Handles Me.OnEdit
    If SelectedIncidentType > -1 Then cmbIncidentType.SelectedIndex = Me.SelectedIncidentType
    chkAffidavit.Checked = Me.UseAffidavit
  End Sub
      
  Private Sub _Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    If Not cmbIncidentType Is Nothing Then
      If cmbIncidentType.Items.Count = 0 Then cmbIncidentType.Items.AddRange(Me.IncidentTypes_1033)
    End If
  End Sub
</script>