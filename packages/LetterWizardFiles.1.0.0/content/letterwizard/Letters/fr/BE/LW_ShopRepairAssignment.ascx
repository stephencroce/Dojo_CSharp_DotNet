<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_ShopRepairAssignment" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->

<!--// PAGE 1 of 1 //-->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 CLASS="<%=me.PageSizeCss%>">
  <TR>
    <TD height="100%" valign="TOP">
      <!--// Header Section //-->
      <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <TR>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              Xyrus NV<br />Berlaarsestraat 14<br />2500 Lier
            </TD>
            <TD valign="top" width="50%" CLASS="TextSmallNormal">
              T�l�phone: 03/241.01.39 &nbsp; &nbsp; Fax: 03/491.01.39<br />
              Devis et photos: engineer@xyrus.be<br />
              Factures: invoice@xyrus.be
            </TD>
          </TR>
        </TABLE>
      </DIV>
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style=padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo"></ASP:PLACEHOLDER></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U><ASP:LABEL Runat=server ID=lblRevised />Autorisation de R�paration</U></TD>
        </TR>
        <TR>
          <TD align=CENTER style="font:bold 10pt Sans-Serif;"><U><ASP:LABEL runat=server id=lblDate /></U></TD>
        </TR>  
      </TABLE>
    </DIV>
    
    <!--// Repair Facility //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;"><B>Carrossier/Garage:</B> <ASP:LABEL runat=server id=lblShopName /></TD>
        </TR>
        <TR runat=server id=trAttention>
          <TD style="font:normal 10pt Sans-Serif;"><B>� l�attn de:</B> <ASP:LABEL runat=server id=lblShopContact /></TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Content //-->
    <DIV style="margin-top:5px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD style="font:normal 10pt Sans-Serif;">The CEI Group autorise les r�parations pour le sinistre suivant. Cette autorisation pour R�paration vaut pour le montant sp�cifi�.<br>Merci de prendre imm�diatement contact avec CEI si vous n��tes pas d�accord avec le montant approuv�.</TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Customer / Contact Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Client</TD>
              </TR>            
              <TR>
                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Client:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimClient /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Division:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimBranch /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Num. de Sinistre:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimNumber /></TD>
              </TR>                            
            </TABLE>
          </TD>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblEmployeeInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Employ�</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nom:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblEmployeeName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblEmployeeAddress" /></NOBR></TD>
                </TR>
                <TR runat=server id="trEmployeeHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de T�l�phone � la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de GSM personnel:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMHP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de tel. Travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeWP" /></TD>
                </TR>
                <TR runat=server id="trEmployeeMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de GSM travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEmployeeMWP" /></TD>
                </TR>
            </TABLE>
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%" runat=server id="tblContactInformation">
                <TR>
                    <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Information Personne � contacter</TD>
                </TR>            
                <TR>
                    <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relation:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactRelationship" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Nom:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblContactName" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Adresse:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblContactAddress" /></NOBR></TD>
                </TR>
                <TR runat=server id="trContactHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de tel. � la maison:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactHP" /></TD>
                </TR>
                <TR runat=server id="trContactMHP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de GSM personnel:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMHP" /></TD>
                </TR>
                <TR runat=server id="trContactWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de tel. Travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactWP" /></TD>
                </TR>
                <TR runat=server id="trContactMWP">
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>N� de GSM travail:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblContactMWP" /></TD>
                </TR>
            </TABLE>                    
          </TD>
        </TR>           
      </TABLE>
    </DIV>
    
    <!--// Vehicle Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:normal 12pt Sans-Serif;"><B>Information v�hicule</B> (veuillez v�rifier toutes les donn�es)</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Ann�e:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleYear" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Marque:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMake" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Mod�le:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleModel" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Style:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleStyle" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Teinte:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleColor" /></TD>
                </TR>
                </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Num. Chassis NIV:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleVIN" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Plaque d�immatriculation:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehiclePlate" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Kilom�trage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblVehicleMileage" /></NOBR></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Franchise:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleDeductable" /></TD>
                </TR>
              </TABLE>   
            </TD>
        </TR>
      </TABLE>
    </DIV>

    <!--// Client Requirements //-->
    <%=Me.CustomData(Me.Index.LanguageId)%>
    
    <!--// Purchase Order Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="padding-bottom:5px; font:normal 12pt Sans-Serif;"><B>CEI Information Purchase Order (Bon de commande, BC)</B></TD>
        </TR>
        <TR>
            <TD valign=top width="100%">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Description</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Date d�envoi (initial)</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Num�ro BC </NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Montant BC</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Date R�vision</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000;"><NOBR>Montant d�finitif total</NOBR></TD>
                </TR>
                <ASP:PLACEHOLDER runat=server id=phPOInfo></ASP:PLACEHOLDER>
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:bold 10pt Sans-Serif;"><NOBR>Total</NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalPOAmount" /></NOBR></TD>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;</NOBR></TD>
                    <TD align=right style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><NOBR>&nbsp;<ASP:LABEL runat=server id="lblTotalRevisedAmount" /></NOBR></TD>
                </TR>                
              </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>

    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="font:normal 12pt Sans-Serif;"><B>Instructions importantes</B> (afin de permettre l�approbation de r�paration/paiement.)</TD>
        </TR>
        <TR>
            <TD valign=top>
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">1.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Cette autorisation vaut uniquement pour le montant approuv� (ne comprend pas d��ventuels montants additionnels). Des montants additionnels ne pourront pas �tre pay�s sous ce PO. Prenez imm�diatement contact avec CEI si un frais additionnel est anticip�/redout� - ce PO couvre uniquement le montant approuv� sp�cifi�.</TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">2.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Des suppl�ments ne seront PAS pay�s sauf si CEI est mis au courant bien � l�avance, et pr�alablement � la fin des r�parations.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">3.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Toutes autorisations doivent uniquement venir de CEI. Ni les chauffeurs, managers ou experts ne peuvent donner des autorisations pour r�paration.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">4.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Toutes les r�parations exigent un devis et des photos claires des d�g�ts, pr�alablement � toute autorisation de r�paration. Le paiement des r�parations peut prendre du retard si ces documents ne sont pas envoy�s � CEI dans un d�lai raisonnable.</TD>
                </TR> 
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">5.</TD>
                    <TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;">Une copie de  l� autorisation doit �tre envoy�e avec la facture finale.</TD>
                </TR>
              </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Final Note //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top style="font:normal 10pt Sans-Serif;">Si les informations susmentionn�es sont incorrectes, veuillez contacter nos bureaux au <nobr>03/241.01.39</nobr> en mentionnant le num�ro de sinistre. <B><ASP:LABEL runat=server id="lblClaimNumber2" /></B>.</TD>
        </TR>
      </TABLE>
    </DIV>
    
    <!--// Important Instructions //-->
    <DIV style="margin-top:30px;">
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD style="font:normal 10pt Sans-Serif;">
                  Veuillez contacter CEI pour nous renseigner sur:
                  <UL>
                    <li>La date du rendez-vous pour r�paration (si le v�hicule n�est pas dans le garage pour le moment.)</li>
                    <li>Pr�cisions (dates,�) sur d��ventuels retards de r�paration</li>
                    <li>Pr�cisions (dates,�) sur la fin de r�paration</li>
                    <li>Chaque retard relatif � la restitution finale du v�hicule.</li>
                  </UL>
                  Si CEI n�est pas inform� correctement, suffisamment et � temps, le paiement pourrait prendre du retard.
                </TD>
            </TR>
          </TABLE>
    </DIV>
    </TD>
  </TR>
  <TR>
    <TD height="1px">
      <!--// Footer //-->
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2006, The CEI Group, Inc. Proprietary and Confidential.</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Letters/fr/BE/LW_ShopRepairAssignment</TD>
        </TR>
        <TR>
          <TD colspan=2 CLASS="TextSmallBold" align="center">Page 1 ou 1</TD>
        </TR>
      </TABLE>
    </TD>
  </TR>
</TABLE>