Imports BO = CEI.Application.Intelliclaim.UserService.BusinessObject
Imports CEI.Application.Shared.Core.Security
Imports CEI.Application.Shared.Core.Messaging
Imports CEI.Application.Shared.Core.Messaging.Facade
Imports System.Collections.Generic
Imports System.IO


Namespace Steps
    Public Class Step5
        Inherits [Step]

        Protected WithEvents phMain As System.Web.UI.WebControls.PlaceHolder
        Protected WithEvents lblContact As System.Web.UI.WebControls.Label
        Protected WithEvents lblName As System.Web.UI.WebControls.Label
        Protected WithEvents txtName As System.Web.UI.WebControls.Label
        Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
        Protected WithEvents txtCompany As System.Web.UI.WebControls.Label
        Protected WithEvents lblAddress As System.Web.UI.WebControls.Label
        Protected WithEvents txtAddress As System.Web.UI.WebControls.Label
        Protected WithEvents bntContact As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents lblRecipient As System.Web.UI.WebControls.Label
        Protected WithEvents lblEmail As System.Web.UI.WebControls.Label
        Protected WithEvents txtEmail As System.Web.UI.WebControls.Label
        Protected WithEvents lblFax As System.Web.UI.WebControls.Label
        Protected WithEvents txtFax As System.Web.UI.WebControls.Label
        Protected WithEvents bntRecipient As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents lblLetter As System.Web.UI.WebControls.Label
        Protected WithEvents lblTemplate As System.Web.UI.WebControls.Label
        Protected WithEvents txtTemplate As System.Web.UI.WebControls.Label
        Protected WithEvents lblSubject As System.Web.UI.WebControls.Label
        Protected WithEvents txtSubject As System.Web.UI.WebControls.Label
        Protected WithEvents lblComment As System.Web.UI.WebControls.Label
        Protected WithEvents txtComment As System.Web.UI.WebControls.Label
        Protected WithEvents bntLetter As CEI.Application.Common.Web.UI.WebControls.CEIButton

        Protected WithEvents phThanks As System.Web.UI.WebControls.PlaceHolder
        Protected WithEvents lblThanksTitle As System.Web.UI.WebControls.Label
        Protected WithEvents lblThanksMessage As System.Web.UI.WebControls.Label
        Protected WithEvents bntThanks As CEI.Application.Common.Web.UI.WebControls.CEIButton

        Protected WithEvents phTemplate As System.Web.UI.WebControls.Panel
        Public Event LetterSent(ByVal sender As Object, ByVal e As EventArgs)
        Dim FilePath As String = Nothing

        Public Overrides ReadOnly Property Title() As String
            Get
                Return CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Wizard_Step5")
            End Get
        End Property

#Region " Base Class Overrides "
        Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
            MyBase.OnInit(e)

            lblContact.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "mnuContacts") ' "Contact Information"
            lblName.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Name") ' "Name:"
            lblCompany.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Company") ' "Company:"
            lblAddress.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Address") ' "Address:"
            bntContact.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Bnt_Modify") ' "Modify"

            lblRecipient.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Hdr_Recipient_Information") ' "Recipient Information"
            lblEmail.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0007") ' "Email Addresses:"
            lblFax.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0008") ' "Fax Numbers:"
            bntRecipient.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Bnt_Modify") ' "Modify"

            lblLetter.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Information") ' "Letter Information"
            lblTemplate.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Template") ' "Template:"
            lblSubject.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lbl_subject") '  "Subject:"
            lblComment.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lblStatusComment") '  "Message:"
            bntLetter.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Bnt_Modify") ' "Modify"
        End Sub

        Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
            MyBase.OnLoad(e)

            Me.bntSend.Enabled = True
            Me.bntNext.Enabled = False
        End Sub

        Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
            MyBase.OnPreRender(e)
            Dim LetterContact As Contact = Me.Parent.Contacts.Item(Me.Parent.ContactID)

            txtName.Text = CEI.Application.Common.Framework.BusinessObject.ContactName.GetDisplayName(LetterContact.Name) & "&nbsp;"
            txtCompany.Text = LetterContact.Company & "&nbsp;"
            txtAddress.Text = LetterContact.Address.TransformAddress(Common.Framework.BusinessObject.ContactComponetUtilities.FormatOptions.HTML) & "&nbsp;"

            txtEmail.Text = ""
            For Each Item As Controls.RecipientItem In Me.Parent.EmailRecipients
                If Item.Selected = True Then
                    If txtEmail.Text.Length > 0 Then txtEmail.Text += "<BR>"
                    txtEmail.Text += Item.Value
                End If
            Next
            txtEmail.Text += "&nbsp;"

            txtFax.Text = ""
            For Each Item As Controls.RecipientItem In Me.Parent.FaxRecipients
                If Item.Selected = True Then
                    If txtFax.Text.Length > 0 Then txtFax.Text += "<BR>"
                    txtFax.Text += Item.Value
                End If
            Next
            txtFax.Text += "&nbsp;"

            Dim Template As LetterTemplate.Template = Me.Parent.Templates.Item(Me.Parent.TemplateId)
            If Not Template Is Nothing Then
                txtTemplate.Text = Template.Languages.Item(Me.Parent.LanguageId).Path
            End If
            txtTemplate.Text += "&nbsp;"

            txtSubject.Text = Me.Parent.Subject & "&nbsp;"
            txtComment.Text = Me.Parent.Comment.Replace(Chr(13), "<BR>") & "&nbsp;"

        End Sub
#End Region

        Private Sub bntContact_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntContact.Click
            Me.Parent.CurrentStep = Index.eStep.Step2
            Me.Parent.LoadStep()
        End Sub
        Private Sub bntLetter_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntLetter.Click
            Me.Parent.CurrentStep = Index.eStep.Step1
            Me.Parent.LoadStep()
        End Sub
        Private Sub bntRecipient_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntRecipient.Click
            Me.Parent.CurrentStep = Index.eStep.Step4
            Me.Parent.LoadStep()
        End Sub
        'Public Enum H2PConfig
        '    Original = 0
        '    NServiceBus = 1
        '    OriginalNServiceBus = 2
        'End Enum
        Public Overrides Sub bntSend_Click(ByVal sender As Object, ByVal e As System.EventArgs)

            SendLetterViaNServiceBus()

            'Update to Add a Note to the Notes Table.
            'Dim Note As CEI.Application.Intelliclaim.UserService.BusinessObject.ClaimNote = CEI.Application.Intelliclaim.UserService.BusinessObject.ClaimNote.CreateNewNote(Me.Parent.Claim.ClaimID)
            Dim Note As CEI.Application.Intelliclaim.UserService.BusinessObject.Notes
            Select Case Me.Parent.TemplateId
                Case 1, 3, 4, 5, 6, 7, 8, 9, 17, 18
                    Note = CEI.Application.Intelliclaim.UserService.BusinessObject.Notes.CreateNewNote(Me.Parent.Claim.ClaimID, Note.NoteTypeOptions.Subro)
                Case Else
                    Note = CEI.Application.Intelliclaim.UserService.BusinessObject.Notes.CreateNewNote(Me.Parent.Claim.ClaimID, Note.NoteTypeOptions.Claim)
            End Select
            'Note.CreateNewNote(Me.Parent.Claim.ClaimID, Note.NoteTypeOptions.Claim)
            Note.AddEventTag(BusinessObject.Notes.ClaimNoteEventCodeOptions.LetterSent)

            If Me.Parent.EmailRecipients.Count > 0 Then
                For Each Item As Controls.RecipientItem In Me.Parent.EmailRecipients
                    'If Item.Selected = True Then Note.AddTag(CEI.Application.Intelliclaim.UserService.BusinessObject.ClaimNote.TAG_RECIPIENT, Item.Value)
                    If Item.Selected = True Then Note.AddTag(CEI.Application.Intelliclaim.UserService.BusinessObject.Notes.TAG_RECIPIENT, Item.Value)
                Next
            End If

            If Me.Parent.FaxRecipients.Count > 0 Then
                For Each Item As Controls.RecipientItem In Me.Parent.FaxRecipients
                    'If Item.Selected = True Then Note.AddTag(CEI.Application.Intelliclaim.UserService.BusinessObject.ClaimNote.TAG_RECIPIENT, Item.Value)
                    If Item.Selected = True Then Note.AddTag(CEI.Application.Intelliclaim.UserService.BusinessObject.Notes.TAG_RECIPIENT, Item.Value)
                Next
            End If

            'Note.Note = String.Format(CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0011"), CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, Me.Parent.Templates.Item(Me.Parent.TemplateID).Resource))
            Note.Note = String.Format(CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0011"), Me.Parent.Templates.Item(Me.Parent.TemplateId).TemplateName)
            Note.Tags.Add(New CEI.Application.Common.Framework.Customization.ContextItem("LetterTemplateId", Me.Parent.TemplateId))
            Note.Tags.Add(New CEI.Application.Common.Framework.Customization.ContextItem("LetterTemplateLCID", Me.Parent.LanguageId))
            Note.Tags.Add(New CEI.Application.Common.Framework.Customization.ContextItem("LetterTemplatePath", Me.Parent.Templates.Item(Me.Parent.TemplateId).Languages.Item(Me.Parent.LanguageId).Path))
            Note.Update()

            ' Display Result to Client.

            If CType(System.Configuration.ConfigurationSettings.AppSettings.Item("Intelliclaim.LetterWizard.Enabled"), Boolean) = True AndAlso Not Me.Parent.Claim.IsDemoClaim Then
                phMain.Visible = False
                phThanks.Visible = True

                lblThanksTitle.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0009")
                lblThanksMessage.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Sent")
                bntThanks.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10007")

                bntBack.Enabled = False
                bntNext.Enabled = False
                bntSend.Enabled = False
                bntCancel.Enabled = False

                bntThanks.Attributes.Add("onclick", "CloseDialog(true);")
            Else
                phMain.Visible = False
                phThanks.Visible = True

                lblThanksTitle.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0009")

                If Me.Parent.Claim.IsDemoClaim Then
                    lblThanksMessage.Text = "Currently the Letter Wizard's Send Feature is turned off, no Demo Claims may be sent at this time."
                Else
                    lblThanksMessage.Text = "Currently the Letter Wizard's Send Feature is turned off, no letters can be sent at this time."
                End If

                bntThanks.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10007")

                bntBack.Enabled = False
                bntNext.Enabled = False
                bntSend.Enabled = False
                bntCancel.Enabled = False

                bntThanks.Attributes.Add("onclick", "CloseDialog(true);")

            End If

        End Sub
        Private Sub SendLetter_Original_H2P_Process()
            If Not FilePath Is Nothing Then

                Try
                    Dim Item As LetterTemplate.Template = Me.Parent.Templates.Item(Me.Parent.TemplateId)
                    Dim Template As Letter = LoadControl(Index.LetterPath & Item.Languages.Item(Me.Parent.LanguageId).Path)
                    Template.ID = "Letter"
                    phTemplate.Controls.Add(Template)

                    Dim HTML As String = String.Empty
                    HTML = "<HTML><HEAD>" & vbCrLf

                    If Not Template Is Nothing Then
                        If Template.NTAccount.Length > 0 Then
                            HTML += "<SCRIPT language=XML id=PDFAccount>" & vbCrLf
                            HTML += "  <ROOT>" & vbCrLf
                            HTML += "    <PROPERTIES>" & vbCrLf
                            HTML += "      <ACCOUNT VALUE=""" & Template.NTAccount & """/>" & vbCrLf
                            HTML += "    </PROPERTIES>" & vbCrLf
                            HTML += "  </ROOT>" & vbCrLf
                            HTML += "</SCRIPT>" & vbCrLf
                        End If
                    End If

                    HTML += "<SCRIPT language=XML id=PDFSpooler>" & vbCrLf
                    HTML += CreateXML_Original_H2P_Process()
                    HTML += "</SCRIPT>" & vbCrLf

                    HTML += "<SCRIPT language=XML id=OnBase>" & vbCrLf
                    HTML += CreateOnBaseXML_Original_H2P_Process(Template)
                    HTML += "</SCRIPT>" & vbCrLf

                    HTML += "</HEAD><BODY>" & vbCrLf
                    HTML += RenderTemplate_Original_H2P_Process(Template)
                    HTML += "</BODY></HTML>"

                    RaiseEvent LetterSent(Me, Nothing)

                    phTemplate.Controls.Remove(Template)

                    If CType(System.Configuration.ConfigurationSettings.AppSettings.Item("Intelliclaim.LetterWizard.Enabled"), Boolean) = True AndAlso Not Me.Parent.Claim.IsDemoClaim Then
                        Dim Guid As System.Guid = System.Guid.NewGuid()
                        Dim FName As String = "IC-" & Guid.ToString & ".html"
                        Dim FS As New System.IO.FileStream(FilePath & FName, IO.FileMode.Create)
                        Dim SW As New System.IO.StreamWriter(FS, System.Text.Encoding.UTF8)

                        SW.Write(HTML)
                        SW.Flush()
                        SW.Close()
                        FS.Close()
                    End If
                Catch ex2 As System.Web.HttpException
                    Dim z As Int16 = 2
                Catch ex3 As System.UnauthorizedAccessException '	{"Access to the path 'C:\IC-46f364af-569c-4ca0-972d-20612a55b4f2.html' is denied."}	System.UnauthorizedAccessException
                    Throw ex3
                Catch ex As Exception
                    Dim r As Int16 = 1
                End Try
            End If
        End Sub
        Private Function RenderTemplate_Original_H2P_Process(ByVal Template As Letter) As String
            Dim FW As New System.IO.StringWriter
            Dim TW As New System.Web.UI.HtmlTextWriter(FW)

            Template.RenderControl(TW)
            RenderTemplate_Original_H2P_Process = FW.ToString

            TW.Close()
            FW.Close()
        End Function
        Private Function CreateXML_Original_H2P_Process() As String
            Dim xDoc As New System.Xml.XmlDocument

            Dim xRoot As System.Xml.XmlElement = xDoc.CreateElement("ROOT")
            Dim xProperties As System.Xml.XmlElement = xDoc.CreateElement("PROPERTIES")
            Dim xSubject As System.Xml.XmlElement = xDoc.CreateElement("SUBJECT")
            Dim xSubjectValue As System.Xml.XmlAttribute = xDoc.CreateAttribute("Value")

            Dim xFrom As System.Xml.XmlElement = xDoc.CreateElement("FROM")
            Dim xFromName As System.Xml.XmlAttribute = xDoc.CreateAttribute("NAME")
            Dim xFromEmail As System.Xml.XmlAttribute = xDoc.CreateAttribute("EMAIL")

            Dim xMessage As System.Xml.XmlElement = xDoc.CreateElement("MESSAGE")
            Dim xMessageValue As System.Xml.XmlAttribute = xDoc.CreateAttribute("Value")

            Dim _DomainCulture As System.Globalization.CultureInfo
            _DomainCulture = New System.Globalization.CultureInfo(New CEI.Application.Common.Framework.BusinessObject.Domain(CEI.Application.Common.Framework.Security.CEIApplicationIdentity.GetCurrentIdentity.DomainID).LocaleID)

            xDoc.AppendChild(xRoot)
            xRoot.AppendChild(xProperties)
            xProperties.AppendChild(xFrom)
            xFrom.Attributes.Append(xFromName)
            xFrom.Attributes.Append(xFromEmail)
            xProperties.AppendChild(xSubject)
            xSubject.Attributes.Append(xSubjectValue)
            xProperties.AppendChild(xMessage)
            xMessage.Attributes.Append(xMessageValue)

            Dim CurrentUser As ICEIIdentity = CEI.Application.Intelliclaim.Framework.WebUtility.SessionThreadState.CurrentUser

            xFromName.Value = CurrentUser.Name

            xFromEmail.Value = "DoNotReply@ceinetwork.com" 'TODO: Turn Into Business Rule
            xSubjectValue.Value = Me.Parent.Subject
            xMessageValue.Value = Me.Parent.Comment


            Dim xContacts As System.Xml.XmlDocument

            If Me.Parent.EmailRecipients.Count > 0 Then
                For Each Item As Controls.RecipientItem In Me.Parent.EmailRecipients
                    If Item.Selected = True Then
                        Dim xEmail As System.Xml.XmlElement = xDoc.CreateElement("EMAIL")
                        Dim xEmailName As System.Xml.XmlAttribute = xDoc.CreateAttribute("NAME")
                        Dim xEmailEmail As System.Xml.XmlAttribute = xDoc.CreateAttribute("EMAIL")
                        xEmailName.Value = Item.Value
                        xEmailEmail.Value = Item.Value
                        xEmail.Attributes.Append(xEmailName)
                        xEmail.Attributes.Append(xEmailEmail)
                        xProperties.AppendChild(xEmail)
                    End If
                Next
            End If

            If Me.Parent.FaxRecipients.Count > 0 Then
                For Each Item As Controls.RecipientItem In Me.Parent.FaxRecipients
                    If Item.Selected = True Then
                        Dim xFax As System.Xml.XmlElement = xDoc.CreateElement("FAX")
                        Dim xFaxName As System.Xml.XmlAttribute = xDoc.CreateAttribute("NAME")
                        Dim xFaxNumber As System.Xml.XmlAttribute = xDoc.CreateAttribute("NUMBER")

                        Dim Number As String = ""
                        For Each Letter As Char In Item.Value.ToCharArray
                            If System.Char.IsNumber(Letter) = True Then
                                Number += Letter
                            End If
                        Next

                        xFaxName.Value = Number
                        xFaxNumber.Value = Number
                        xFax.Attributes.Append(xFaxName)
                        xFax.Attributes.Append(xFaxNumber)
                        xProperties.AppendChild(xFax)
                    End If
                Next
            End If

            Return xRoot.OuterXml
        End Function
        Private Function CreateOnBaseXML_Original_H2P_Process(ByVal Template As Letter) As String
            Dim xDoc As New System.Xml.XmlDocument
            xDoc.LoadXml("<ROOT/>")

            Dim _Properties As System.Xml.XmlNode = xDoc.CreateElement("PROPERTIES")
            Dim _DocType As System.Xml.XmlNode = xDoc.CreateElement("DOCTYPE")
            Dim _Vendor As System.Xml.XmlNode = xDoc.CreateElement("VENDOR")
            Dim _Claim As System.Xml.XmlNode = xDoc.CreateElement("CLAIM")
            Dim _Title As System.Xml.XmlNode = xDoc.CreateElement("TITLE")
            Dim _Template As System.Xml.XmlNode = xDoc.CreateElement("TEMPLATE")
            Dim _TemplateId As System.Xml.XmlNode = xDoc.CreateElement("TEMPLATEID")

            xDoc.DocumentElement.AppendChild(_Properties)
            _Properties.AppendChild(_DocType)
            _Properties.AppendChild(_Vendor)
            _Properties.AppendChild(_Claim)
            _Properties.AppendChild(_Title)
            _Properties.AppendChild(_Template)
            _Properties.AppendChild(_TemplateId)

            _DocType.Attributes.Append(xDoc.CreateAttribute("value"))
            _Vendor.Attributes.Append(xDoc.CreateAttribute("value"))
            _Claim.Attributes.Append(xDoc.CreateAttribute("value"))
            _Title.Attributes.Append(xDoc.CreateAttribute("value"))
            _Template.Attributes.Append(xDoc.CreateAttribute("value"))
            _TemplateId.Attributes.Append(xDoc.CreateAttribute("value"))

            If TypeOf Template Is Letters.Subrogation Or TypeOf Template Is Templates.Subrogation Or TypeOf Template Is Templates.LossRecovery Then
                _DocType.Attributes("value").Value = "Subro Letter"
            Else
                _DocType.Attributes("value").Value = "Letter"
            End If

            _Vendor.Attributes("value").Value = "0"
            _Claim.Attributes("value").Value = "0"

            If Not Me.Parent.Workflow Is Nothing Then _Vendor.Attributes("value").Value = Me.Parent.Workflow.VendorID.ToString
            If Not Me.Parent.Claim Is Nothing Then _Claim.Attributes("value").Value = Me.Parent.Claim.ClaimID.ToString

            _Title.Attributes("value").Value = Me.Parent.Templates.Item(Me.Parent.TemplateId).TemplateName
            _Template.Attributes("value").Value = Me.Parent.TemplatePath
            _TemplateId.Attributes("value").Value = Me.Parent.TemplateId

            Return xDoc.DocumentElement.OuterXml
        End Function
        Private Sub SendLetterViaNServiceBus()
            Try
                Dim Item As LetterTemplate.Template = Me.Parent.Templates.Item(Me.Parent.TemplateId)
                Dim Template As Letter = LoadControl(Index.LetterPath & Item.Languages.Item(Me.Parent.LanguageId).Path)
                Template.ID = "Letter"
                phTemplate.Controls.Add(Template)

                Dim HTML As String = String.Empty
                HTML = "<HTML><HEAD>" & vbCrLf
                HTML += "</HEAD><BODY>" & vbCrLf
                HTML += RenderTemplate(Template)
                HTML += "</BODY></HTML>"

                RaiseEvent LetterSent(Me, Nothing)

                phTemplate.Controls.Remove(Template)

                If CType(System.Configuration.ConfigurationSettings.AppSettings.Item("Intelliclaim.LetterWizard.Enabled"), Boolean) = True AndAlso Not Me.Parent.Claim.IsDemoClaim Then

                    Dim lstEmails As List(Of String) = New List(Of String)
                    Dim lstFaxes As List(Of String) = New List(Of String)

                    'wtf  - there's probably a way to cast a RecipientItemCollection to a string array but it wasn't wanting to work, so just brute force it:
                    For Each email As Controls.RecipientItem In Me.Parent.EmailRecipients
                        If email.Selected = True Then
                            lstEmails.Add(email.Value)
                        End If

                    Next
                    For Each fax As Controls.RecipientItem In Me.Parent.FaxRecipients
                        If fax.Selected = True Then
                            lstFaxes.Add(fax.Value)
                        End If

                    Next

                    Dim htmlToPdfMsg As IHtmlToPdfMsg = New HtmlToPdfMsg()

                    'used as a unique name to persist html to file system in a .dat file:
                    Dim fileNameGuid As Guid
                    fileNameGuid = Guid.NewGuid()

                    htmlToPdfMsg.EmailAddresses = lstEmails.ToArray()
                    htmlToPdfMsg.FaxNumsOrAddresses = lstFaxes.ToArray()
                    htmlToPdfMsg.DocType = "Letter"

                    If Me.Parent.Claim.ID > 0 Then
                        htmlToPdfMsg.SaveToOnbase = True
                        If TypeOf Template Is Letters.Subrogation Or TypeOf Template Is Templates.Subrogation Or TypeOf Template Is Templates.LossRecovery Then
                            htmlToPdfMsg.DocType = "Subro Letter"
                        End If
                    Else
                        htmlToPdfMsg.SaveToOnbase = False
                    End If

                    htmlToPdfMsg.ClaimId = Me.Parent.Claim.ID
                    htmlToPdfMsg.VendorId = Me.Parent.Claim.VendorID

                    If Not Template Is Nothing Then
                        htmlToPdfMsg.AccountValue = Template.NTAccount
                    Else
                        htmlToPdfMsg.AccountValue = String.Empty
                    End If

                    htmlToPdfMsg.Title = Me.Parent.Templates.Item(Me.Parent.TemplateId).TemplateName
                    htmlToPdfMsg.Template = Me.Parent.TemplatePath
                    htmlToPdfMsg.TemplateId = Me.Parent.TemplateId
                    htmlToPdfMsg.FromName = CEI.Application.Intelliclaim.Framework.WebUtility.SessionThreadState.CurrentUser.Name
                    htmlToPdfMsg.Subject = Me.Parent.Subject

                    'FNOLS :: if the message contains an FNOL, then certain things need to happen:   (templateId 15 = FNOL)
                    '===========================================================================================================
                    If (Me.Parent.TemplateId = 15) Then
                        Dim FNOLAttributes As New Dictionary(Of String, String)() From {
                                {"FileNameGuid", fileNameGuid.ToString},
                                {"UserId", Me.Parent.Claim.CurrentUserID},
                                {"DomainId", Me.Parent.Domain.DomainID},
                                {"TimeZoneId", Me.Parent.Claim.CreateDT.TimeZoneID},
                                {"LocaleId", Me.Parent.Domain.LocaleID},
                                {"ApplicationId", CEI.Application.Common.Framework.Security.CEIApplicationIdentity.GetCurrentIdentity.ApplicationID},
                                {"ClaimId", Me.Parent.Claim.ClaimID},
                                {"BrandingDirectory", Me.Parent.Claim.OrganizationRules(New [Shared].Core.BusinessRule.RuleAccessor(200015, Me.Parent.Domain.DomainID, CEI.Application.Common.Framework.Security.CEIApplicationIdentity.GetCurrentIdentity.ApplicationID)).Params(0).ParamValue}
                        }
                        htmlToPdfMsg.FNOLAttributes = FNOLAttributes
                        htmlToPdfMsg.Subject = String.Format("CEI Loss Notice Report for CEI claim {0}", Me.Parent.Claim.ID)
                        'htmlToPdfMsg.Message = String.Format("Preview your CEI Loss Notice Report for CEI claim {0} at {1}", Me.Parent.Claim.ID, String.Format("https://dev.client.na.claims.com:6224/OnRamp/FNOL?fng={0}", fileNameGuid.ToString))
                        htmlToPdfMsg.Message = String.Format("Preview your CEI Loss Notice Report for CEI claim {0} at {1}", Me.Parent.Claim.ID, String.Format("{0}?fng={1}", System.Configuration.ConfigurationSettings.AppSettings("FNOLOnRampUrl"), fileNameGuid.ToString))
                        '===========================================================================================================
                    Else
                        htmlToPdfMsg.Message = If(String.IsNullOrEmpty(Me.Parent.Comment), String.Format("Information regarding CEI claim {0}.", htmlToPdfMsg.ClaimId), Me.Parent.Comment)
                    End If

                    'Try passing HTML bytes over NServiceBus:
                    'htmlToPdfMsg.HtmlBytes = System.Text.Encoding.UTF8.GetBytes(HTML)

                    'Try implmenting NServiceBus 'DataBus' feature, kept getting Error:  You can't access Configure.Instance.Builder before calling specifying a builder.  Please add a call to Configure.DefaultBuilder()  :
                    'htmlToPdfMsg.HtmlBytesDataBus = System.Text.Encoding.UTF8.GetBytes(HTML)
                    'htmlToPdfMsg.HtmlBytesDataBus = New NServiceBus.DataBusProperty(Of Byte())(System.Text.Encoding.UTF8.GetBytes(HTML))

                    'persist html to file system:
                    '===========================================================================================================
                    'PROBLEM: In QA and production, there is a permissions problem when trying to write all bytes to the specified folder path.  
                    'SOLUTION: Set up "H2PGuy" account on 76B
                    'Dim impersonator As New AliasAccount("SteveCro", "CEINetwork2015", "CEI") 'this also works but is only a dev solution:
                    Dim impersonator As New AliasAccount(ConfigurationSettings.AppSettings("H2PImpersonatorUserName"), ConfigurationSettings.AppSettings("H2PImpersonatorUserPassword"))
                    impersonator.BeginImpersonation()
                    System.IO.File.WriteAllBytes(String.Format("{1}{2}_{3}_{0}HTMLBytes.dat", fileNameGuid, GetFolderPath, htmlToPdfMsg.DocType.Replace(" ", String.Empty), htmlToPdfMsg.ClaimId), System.Text.Encoding.UTF8.GetBytes(HTML))
                    htmlToPdfMsg.HtmlBytesFileName = String.Format("{1}{2}_{3}_{0}HTMLBytes.dat", fileNameGuid, GetFolderPath, htmlToPdfMsg.DocType.Replace(" ", String.Empty), htmlToPdfMsg.ClaimId)
                    impersonator.EndImpersonation()
                    '===========================================================================================================

                    htmlToPdfMsg.FileNameGuid = fileNameGuid
                    htmlToPdfMsg.DatabaseId = 0  'this is here per the original discussion about storing the html of the messages in a database somewhere.  Not sure if this is still required.  Setting 0  for now until further direction recvd
                    htmlToPdfMsg.SessionID = Me.Session.SessionID
                    htmlToPdfMsg.TestMode = LCase(System.Configuration.ConfigurationSettings.AppSettings("H2PMode")) = "OriginalNServiceBus"

                    'Dim fac As IMessageFacade = CEI.Application.Shared.Core.Container.Resolve(Of IMessageFacade)()
                    Dim fac As IMessageFacade = CEI.Application.Shared.Core.Container.Resolve(Of MessageFacade)()
                    fac.SendMessage(DirectCast(htmlToPdfMsg, ICEIMessage))
                    'fac.SendMessage("communicationssubscriber", htmlToPdfMsg)   'this overload should only be used in testing
                End If
            Catch ex2 As System.Web.HttpException
                Dim z As Int16 = 2
            Catch ex3 As System.UnauthorizedAccessException '	{"Access to the path 'C:\IC-46f364af-569c-4ca0-972d-20612a55b4f2.html' is denied."}	System.UnauthorizedAccessException
                Throw ex3
            Catch ex As Exception
                CEI.Application.Shared.Core.Email.EMail.SendCriticalEmailOnApplicationExcepton(ex, ex.Message)
                'CEI.Application.Shared.Core.Diagnostics.TraceHelper.TraceError("TEST", ex)
                Throw ex
            End Try
        End Sub
        Private Function GetFolderPath() As String
            Dim strDay As String
            strDay = Now.ToString("dd")
            'Dim dtFolderPath As String = String.Format("{0}\{1}\{2}\{3}\", "C:\Temp\H2PDropFolder\", Now.ToString("yyyy"), Now.ToString("MM"), strDay).Replace("\\", "\")
            Dim dtFolderPath As String = String.Format("{0}\{1}\{2}\{3}\", ConfigurationSettings.AppSettings("H2PDropFolderLocation"), Now.ToString("yyyy"), Now.ToString("MM"), strDay).Replace("\\", "\")
            If Not Directory.Exists(dtFolderPath) Then Directory.CreateDirectory(dtFolderPath)
            Return dtFolderPath
        End Function

        Private Function RenderTemplate(ByVal Template As Letter) As String
            Dim FW As New System.IO.StringWriter
            Dim TW As New System.Web.UI.HtmlTextWriter(FW)

            Template.RenderControl(TW)
            RenderTemplate = FW.ToString

            TW.Close()
            FW.Close()
        End Function
    End Class
End Namespace

