<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<%
    Const TemplatePath As String = "Templates/fr/CA/HP/HP_1st_Deductible.ascx"
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
              
                CEI a été informé d’un accident/incident impliquant votre véhicule de parc HP.   Cet accident/incident fait partie des directives d’accident/incident «non-responsable », sans aucune occasion de recouvrement des coûts pour dommages pour Hewlett-Packard. Selon l’article 6 de la Politique concernant le parc nord-américain de HP - Sécurité du véhicule et du participant, vous êtes requis de suivre les instructions de CEI pour les réparations et le rapport de l’accident/l’incident, ainsi que de compléter la certification ci-jointe. À défaut de vous conformer à cette politique, votre privilège de carte d’essence GE sera cancellé. 
				<p/>
                Au nom de parc nord-américain HP, cette lettre est destinée à vous informer de votre obligation conformément à la politique de parc nord-américain HP actuelle.  L'information concernant l'accident/l'incident de votre véhicule de parc assigné est résumé ci-dessous: 
				<p/>                        
              <% Else%>
			  
                CEI a été informé que votre véhicule de parc HP a été impliqué dans un accident/incident.   Cet accident/incident entre dans la catégorie des sinistres « facturables » de la politique de parc de véhicules d’Amérique du Nord de HP, section 6- Sécurité du participant et du véhicule, à laquelle vous pouvez accéder en ligne à l’adresse suivante http://hp.gefleet.com.
			    <p/>
                Cette lettre vous est envoyée pour le compte du parc de véhicules d’Amérique du Nord de HP dans le but de vous informer au sujet de vos obligations de paiement telle que définies par la politique de parc de véhicules d’Amérique du Nord de HP.  Vous trouverez ci-dessous les informations au sujet de l’accident/incident subi par votre véhicule:
			    <p/>
              
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

                Afin de prévenir l’annulation des privilèges de votre carte d’essence GE, veuillez vous assurer d’avoir rempli vos obligations tel qu’indiquées ci-bas.   Pour toute question relative à cet accident/incident, veuillez contacter CEI au hp@ceinetwork.com ou <b>(215)485-4284</b>.             
                <p/>
                <b>Je vous prie d'accepter, Monsieur/Madame, l'expression de mes meilleurs sentiments. </b> <br />
                CEI Services   
                
              <% Else%>
			      Pour éviter l'annulation de votre carte d’essence, veuillez expédier un chèque au montant de  <u><b><%=Me.Payment%></b></u> , avant la date d’échéance ci-dessus, à l'ordre de <b>“CEI Services.”</b>   
				  <b>Veuillez indiquer le numéro de réclamation ci-dessus sur le chèque.</b>
                  <p />
                  <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA  19053</b>
                  </span>
                  <p/>
                  Pour toutes questions au sujet de cet accident/incident, veuillez contacter CEI à  <b>hp@ceinetwork.com</b> ou <b>(215) 485-4284</b><p/>

                  Cordialement,<br>
                  CEI Services   

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
          <td colspan="2" class="TextSmallBold" align="center">Page 2 of 4</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%  End If%>

<!--English Version -->
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
              
                CEI has been informed of an accident/incident involving your HP fleet vehicle.   This accident/incident falls within the guidelines of a “Not At Fault” accident, but has no collection recovery opportunity for Hewlett-Packard.  Per the HP North America Fleet Policy, Section 6 – Participant &amp; Vehicle Safety, you are required to follow reporting and repair instructions from CEI, and to complete the attached Certification.  Failure to follow this policy will result in the cancellation of your GE fuel card privileges.
                <p/>
                On behalf of HP North America Fleet, this letter outlines your obligation per the current HP North America Fleet policy.  The information regarding your assigned fleet vehicle accident/incident is outlined below:
                <p/>
              
              <% Else%>
                  CEI has been informed of an accident/incident involving your HP fleet vehicle. This accident/incident falls within the guidelines of a "chargeable" accident/incident, per the HP North America Fleet Policy, Section 6 – Participant &amp; Vehicle Safety, which can be accessed at http://hp.gefleet.com.
                  <p/>
                  On behalf of HP North America Fleet, this letter is to inform you of your payment obligation per the current HP North America Fleet policy.  The information regarding your assigned fleet vehicle accident/incident is outlined below:
                  <p/>
              <% End If%>


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
                To avoid the cancellation of your GE fuel card privileges, please ensure you have fulfilled your obligations as outlined below.  For questions regarding this accident/incident, please contact CEI at hp@ceinetwork.com or 215-485-4284. <p />
              <% Else%>
                To avoid the cancellation of your GE fuel card privileges, please forward a check in the amount of <u><b><%=Me.Payment%></b></u> prior to <b><%=Now.AddDays(30).ToString("MM/dd/yyyy")%></b>, made payable to "<b>CEI Services</b>". Please reference claim number <b><%=MyBase.ClaimNumber%></b> on your payment:
                <p />
                  <span style="text-align:center;width:100%">
                    <b>CEI Services<br/>
                    4850 E. Street Road, Suite 300<br/>
                    Trevose, PA  19053</b>
                  </span>
                  <p/>
                  For questions regarding this accident/incident, please contact CEI at <b>hp@ceinetwork.com</b> or <b>215-485-4284</b><p/>
                    <p />
              <% End If%>

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

