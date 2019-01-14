<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<%
    Const TemplatePath As String = "Templates/fr/CA/HP/HP_2nd_Deductible.ascx"
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
<!--// COVER PAGE //-->
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


			  Pour la traduction en Anglais, s’il vous plaît regardez au-dessous. <p/> 
              
			  <% If Me.UseAffidavit Then%>
                    <span class="TextBold">OBJET : Obligation de certification d'accident - Avis de retard</span>
					<p/>
                   Le <%=Me.FirstLetterSentDt.ToDateString(Me.DateFormat, Me.Culture)%> CEI Services vous a fait parvenir un premier avis de votre obligation, concernant l’accident/incident qui s’est produit avec votre véhicule de parc assigné de HP (voir l’information de réclamation ci-dessous). 
				   <p />
             <% Else%>
                    <span class="TextBold">OBJET : Obligation de paiement du parc- Notification de montant en souffrance</span>
					<p/>
                    Le <%=Me.FirstLetterSentDt.ToDateString(Me.DateFormat, Me.Culture)%> CEI Services vous a envoyé une première demande de paiement des frais occasionnés par l’accident/incident dans lequel votre véhicule de parc HP a été impliqué (voir ci-dessous les détails de la réclamation).
					<p />
              <% End If%>              
              
 
              <table border="0" cellpadding="0" cellspacing="0" style="padding-left:20px;">
                <tr>
                  <td class="TextNormal">Numéro d’unité:</td>
                  <td class="TextNormal"><%=MyBase.Helper.Vehicle.ClientVehNo%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Conducteur assigné HP:</td>
                  <td class="TextNormal"><%=MyBase.ContactName%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Conducteur au moment de l’accident:</td>
                  <td class="TextNormal"><%=Me.Driver%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Date de la perte:</td>
                  <td class="TextNormal"><%=Me.Helper.Claim.DateOfLoss.ToDateString(Me.DateFormat, Me.Culture)%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Numéro de réclamation:</td>
                  <td class="TextNormal"><%=MyBase.ClaimNumber%></td>
                </tr>
                <tr>
                  <td class="TextNormal">Type d'accident/incident:</td>
                  <td class="TextNormal"><%=Me.IncidentType(3084)%></td>
                </tr>
                 <tr>
                  <td class="TextNormal">Montant:</td>
                  <% If Me.UseAffidavit Then%>
                      <% If Me.PoliceReport = False Then%>
                            <td class="TextNormal">Certification &amp; Notification de rapport de police </td>
                      <% Else%>
                            <td class="TextNormal">Certification </td>
                      <% End If%>

                  <% Else%>
                        <td class="TextNormal"><%=Me.Payment%></td>
                  <% End If%>

                </tr>            
                <tr>
                  <td class="TextNormal">Date d’échéance:</td>
                  <td class="TextNormal"><%=Now.AddDays(30).ToString(Me.DateFormat, Me.Culture)%></td>
                </tr>
              </table>
              <p/>
              
              
              
              <% If Me.UseAffidavit Then%>
              
                Puisque votre certification n’a pas été reçue, votre carte d'essence sera désactivée le <b><%=Now.AddDays(30).ToString(Me.DateFormat, Me.Culture)%></b>.  Pour éviter cela,  veuillez soumettre immédiatement le document de certification signé tel que demandé ci-dessus, en suivant les instructions ci-dessous. <p/>
                Je vous prie d'accepter, Monsieur/Madame, l'expression de mes meilleurs sentiments. <p/>             
              <% Else%>
			      Comme nous n’avons pas reçue votre paiement, votre carte d’essence/entretien sera désactivée le <b><%=Now.AddDays(30).ToString(Me.DateFormat, Me.Culture)%></b>.  Pour éviter cela, nous vous demandons de bien vouloir verser immédiatement le paiement exigé ci-dessus à:  
				  <p/>
                  <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA 19053</b>
                  </span>
                  <p/>
              <% End If%>


              <% If Me.UseAffidavit Then%>

              <% Else%>
                Veuillez établir le chèque au nom de “CEI Services,” et indiquer en référence sur le chèque votre numéro de réclamation. 
				<p/>
                  Si vous avez déjà envoyé votre paiement, veuillez contacter CEI à l’adresse suivante,  <b>hp@ceinetwork.com</b> ou ou appelez le <b>215-485-4284</b><p/>
              <% End If%>
              

              Cordialement,<br/>
              CEI Services  <br/>
			  
			  <% If Me.UseAffidavit Then%>
				<b>hp@ceinetwork.com</b> ou <b>215-485-4284</b>  
			  <% End If%>
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
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of <%=IIf(Me.UseAffidavit, "4", "2")%></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<!-- Page 2 -->
<%  If Me.UseAffidavit Then%>
<!--// COVER PAGE //-->
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
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>IMPORTANT – VEUILLEZ LIRE ATTENTIVEMENT</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">Les conducteurs autorisés de véhicules de parc GE qui sont impliqués dans un accident ou incident « non-responsable », sans aucune occasion de coûts de recouvrement pour dommages pour HP doivent, conformément à la Politique de parc de véhicule HP:</td>
                  </tr>   
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ul>
                        <li style="TEXT-ALIGN: justify">Signaler l’accident/l’incident et aviser leur superviseur ou directeur de l’événement./li>
                        <li style="TEXT-ALIGN: justify">Obtenir les coordonnées du tiers lorsque possible.</li>
                        <li style="TEXT-ALIGN: justify">Remplir un rapport de police s’il n’a pas été obtenu au moment de l’événement.</li>
                        <li style="TEXT-ALIGN: justify">Suivre les instructions fournies par Gestion de parc de véhicule pour obtenir un estimé des réparations des dommages au véhicule de parc.</li>
                        <li style="TEXT-ALIGN: justify">Remplir la certification (voir ci-dessous) et retourner à CEI par l’une des méthodes suivantes:<br/>Courriel/Balayage - <b>hp@ceinetwork.com</b><br/>Télécopieur - <b>215-485-4667</b></li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>CERTIFICATION</u></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">Certification de l’employé HP concernant l’incident du véhicule du <b><%=Me.Helper.Claim.DateOfLoss.ToDateString(Me.DateFormat, Me.Culture)%></b>, Numéro de réclamation de CEI <b><%=MyBase.ClaimNumber%></b></td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:10px;">
                      <ol>
                        <li style="TEXT-ALIGN: justify">L’information que j’ai fournie concernant l’accident ou l’incident impliquant le véhicule de parc HP qui m’était attribué est vraie, précise et conforme en tout point avec mes obligations de signalement sous la Politique de parc de véhicule nord-américaine;</li>
                        <li style="TEXT-ALIGN: justify">Toutes déclarations que j’ai faites lors de l’avis initial de perte sont vraies et rapportent précisément se qui s’est vraiment produit;</li>
                        <li style="TEXT-ALIGN: justify">J’ai fourni toutes les informations que je possède concernant l’occurrence afin d’assister HP dans le recouvrement des coûts de réparations du véhicule;</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td class="TextNormal" style="padding-bottom:20px;">Je comprends que toutes fausses représentations des faits concernant cet incident est une violation des normes de conduite commerciale de HP. Je certifie sous peine de parjure que les déclarations précédentes sont vraies et précises.</td>
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
<!--// COVER PAGE //-->
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

 
              <% If Me.UseAffidavit Then%>
                <span class="TextBold">SUBJECT: Accident Certification Obligation - Past Due Notice</span><p/>
              <% Else%>
                <span class="TextBold">SUBJECT: Fleet Payment Obligation - Past Due Notice</span><p/>
              <% End If%>


              On <%=Me.FirstLetterSentDt.DisplayDate%> CEI Services sent you first notification of your obligation, regarding the accident/incident that occurred with your HP assigned Fleet vehicle (see below claim information).<p/>

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
                <tr>
                  <td class="TextNormal">Due:</td>
                  <% If Me.UseAffidavit Then%>
                      <% If Me.PoliceReport = False Then%>
                            <td class="TextNormal">Certification &amp; Police Report Notification </td>
                      <% Else%>
                            <td class="TextNormal">Certification </td>
                      <% End If%>

                  <% Else%>
                        <td class="TextNormal"><%=Me.Payment%></td>
                  <% End If%>

                </tr>
                <tr>
                  <td class="TextNormal">Due Date:</td>
                  <td class="TextNormal"><%=Now.AddDays(30).ToString("MM/dd/yyyy")%></td>
                </tr>
              </table>
              <p/>
              <% If Me.UseAffidavit Then%>
                Since your Certification has not been received, your fuel card is scheduled to be disabled on <b><%=Now.AddDays(30).ToString("MM/dd/yyyy")%></b>.  To avoid this action, please submit the required signed Certification immediately per the instructions below.<p/>
              <% Else%>
                Since your payment has not been received, your fuel card is scheduled to be disabled on <b><%=Now.AddDays(30).ToString("MM/dd/yyyy")%></b>.  To avoid this action, please submit the above required payment immediately to:<p/>

                   <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA 19053</b>
                  </span>
                  <p/>

              <% End If%>


              <% If Me.UseAffidavit Then%>

              <% Else%>
                Please make check payable to "CEI Services," and reference claim number <b><%=MyBase.ClaimNumber%></b> on your check.<p/>
                If you have already sent your remittance, please contact CEI at <b>hp@ceinetwork.com</b> or <b>215-485-4284</b><p/>

              <% End If%>
              
              Sincerely, <br/>
              CEI Services <br/>
              <b>hp@ceinetwork.com</b> or <b>215-485-4284</b>
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
<!--// COVER PAGE //-->
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
                    <td align="center" class="TextTitle" style="padding-bottom:10px;"><U>IMPORTANT – PLEASE READ CAREFULLY</u></td>
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
                        <li style="TEXT-ALIGN: justify">Complete Certification (see below) and return to CEI through one of the following methods:<br />E-mail/Scan – <b>hp@ceinetwork.com</b><br />Fax - <b>215-485-4667</b></li>
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
                    <td class="TextNormal" style="padding-bottom:20px;">I understand that misrepresentation of the facts regarding this incident is a violation of HP’s Standards of Business Conduct. I certify under penalty of perjury that the foregoing statements are true and accurate.</td>
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

