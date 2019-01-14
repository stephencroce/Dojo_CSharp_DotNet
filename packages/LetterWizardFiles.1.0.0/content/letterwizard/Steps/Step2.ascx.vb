Imports CEI.Application.Intelliclaim.UserService.BusinessObject
Imports CEI.Application.Shared.Core.Cache

Namespace Steps
    Public Class Step2
        Inherits [Step]

        Protected WithEvents lblContacts As System.Web.UI.WebControls.Label
        Protected WithEvents lblName As System.Web.UI.WebControls.Label
        Protected WithEvents txtName As System.Web.UI.WebControls.TextBox
        Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
        Protected WithEvents txtCompany As System.Web.UI.WebControls.TextBox
        Protected WithEvents txtAddress As System.Web.UI.WebControls.TextBox
        Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
        Protected WithEvents cmbContacts As Controls.MultiListBox

        Protected WithEvents bntNew As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents bntEdit As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents bntAdd As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents bntUpdate As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents bntCancelAddEdit As CEI.Application.Common.Web.UI.WebControls.CEIButton

        Protected WithEvents dlgName As CEI.Application.Common.Web.UI.WebControls.Dialogs.NameDialogWrapper
        Protected WithEvents dlgAddress As CEI.Application.Common.Web.UI.WebControls.Dialogs.AddressDialogWrapper

        Private claim As Claim = Claim.CurrentClaim()
        Private _claimsCache As ICacheManager = [Shared].Core.Container.Resolve(Of ICacheManager)("multiclaims")

        Private Enum eStep2State
            [Normal] = 0
            [New] = 1
            [Edit] = 2
        End Enum

        Private Property Step2State() As eStep2State
            Get
                If Me.ViewState("Step2State") Is Nothing Then Me.ViewState("Step2State") = eStep2State.Normal
                Return CType(Me.ViewState("Step2State"), eStep2State)
            End Get
            Set(ByVal Value As eStep2State)
                Me.ViewState("Step2State") = Value
            End Set
        End Property

#Region " Base Class Overrides "
        Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
            MyBase.OnInit(e)

            lblContacts.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10641") ' "Contacts:"
            lblCompany.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Company") ' "Company:"
            bntNew.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10247") '  "New"
            bntEdit.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10736") ' "Edit"
            bntAdd.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "20822") ' "Add"
            bntUpdate.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10735") ' "Update"
            bntCancelAddEdit.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "btnCancel") ' "Cancel"
        End Sub

        Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
            MyBase.OnLoad(e)

            bntSend.Enabled = False
            cmbContacts.MultiSelect = False
            cmbContacts.OnClick = "ObjClick()"
            cmbContacts.DisplayMember = "Text"
            dlgName.ContactSessionVariableKey = claim.ClaimID & ".LetterWizard.Template.Contact.Name"
            dlgAddress.ContactSessionVariableKey = claim.ClaimID & ".LetterWizard.Template.Contact.Address"
        End Sub

        Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
            MyBase.OnPreRender(e)
            'Try
            '    If Me.Parent.Contacts Is Nothing Then
            '        'Dim Obj As Letter = Me.Page.LoadControl(Me.Parent.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateID).Module)
            '        Dim Obj As Letter = Me.Page.LoadControl(Me.Parent.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateId).Languages.Item(Me.Parent.LanguageId).Path)
            '        Me.Parent.Contacts = Obj.Contacts
            '    End If
            'Catch ex As Exception
            '    lblMessage.Text = "<b>[" & Me.Parent.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateId).Languages.Item(Me.Parent.LanguageId).Path.ToString & "]</b>"
            'End Try

            cmbContacts.Items.Clear()
            cmbContacts.Items.AddRange(Me.Parent.Contacts)

            Select Case Me.Step2State
                Case eStep2State.Edit
                    bntAdd.Visible = False
                    bntCancelAddEdit.Visible = True
                    bntEdit.Visible = False
                    bntNew.Visible = False
                    bntUpdate.Visible = True
                Case eStep2State.[New]
                    bntAdd.Visible = True
                    bntCancelAddEdit.Visible = True
                    bntEdit.Visible = False
                    bntNew.Visible = False
                    bntUpdate.Visible = False
                Case eStep2State.Normal
                    bntAdd.Visible = False
                    bntCancelAddEdit.Visible = False
                    bntEdit.Visible = True
                    bntNew.Visible = True
                    bntUpdate.Visible = False
            End Select

            bntNext.Enabled = Me.Parent.ContactID > -1
            bntEdit.Enabled = Me.Parent.ContactID > -1

            If Not Me.Step2State = eStep2State.Normal Then bntNext.Enabled = False
        End Sub
#End Region

        Public Overrides ReadOnly Property Title() As String
            Get
                Return CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Wizard_Step2")
            End Get
        End Property

        Private Sub cmbContacts_SelectedItemChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbContacts.SelectedItemChanged
            Me.Parent.Contacts.Clear()
            Me.Parent.Contacts.AddRange(cmbContacts.Items)

            For i As Integer = 0 To cmbContacts.Items.Count - 1
                Dim Item As Controls.MultiListBoxItem = cmbContacts.Items.Item(i)
                If Item.Selected = True Then
                    Me.Parent.ContactID = i
                    CleanUp()
                    Exit For
                End If
            Next
        End Sub

        Private Sub bntNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntNew.Click
            Me.Step2State = eStep2State.[New]

            Dim Item As New Contact
            Item.Name.NameFirst = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lblNewContact") '"New Contact"
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Name", Item.Name)
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Digital", Item.Digital)
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Address", Item.Address)
        End Sub

        Private Sub bntAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntAdd.Click
            Dim Item As New Contact
            Item.Company = txtCompany.Text
            Item.Name = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Name")
            Item.Digital = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Digital")
            Item.Address = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Address")
            Item.Selected = True

            Me.Parent.Contacts.ClearSelected()
            Me.Parent.Contacts.Add(Item)
            Me.Parent.ContactID = Me.Parent.Contacts.IndexOf(Item)

            CleanUp()
        End Sub

        Private Sub bntEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntEdit.Click
            Me.Step2State = eStep2State.Edit

            Dim Item As Contact = Me.Parent.Contacts.Item(Me.Parent.ContactID)
            Me.txtCompany.Text = Item.Company
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Name", Item.Name)
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Digital", Item.Digital)
            _claimsCache.Insert(claim.ClaimID & ".LetterWizard.Template.Contact.Address", Item.Address)

        End Sub

        Private Sub bntUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntUpdate.Click

            Dim Item As Contact = Me.Parent.Contacts.Item(Me.Parent.ContactID)
            Item.Company = txtCompany.Text
            Item.Name = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Name")
            Item.Digital = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Digital")
            Item.Address = _claimsCache.GetData(claim.ClaimID & ".LetterWizard.Template.Contact.Address")

            CleanUp()
        End Sub

        Private Sub CleanUp()
            ' Clean Up
            _claimsCache.Remove(claim.ClaimID & ".LetterWizard.Template.Contact.Name")
            _claimsCache.Remove(claim.ClaimID & ".LetterWizard.Template.Contact.Digital")
            _claimsCache.Remove(claim.ClaimID & ".LetterWizard.Template.Contact.Address")

            txtAddress.Text = ""
            txtCompany.Text = ""
            txtName.Text = ""

            Me.Step2State = eStep2State.Normal
        End Sub

        Private Sub Page_OnBack(ByVal Sender As Object, ByVal e As System.EventArgs) Handles MyBase.OnBack, MyBase.OnNext, MyBase.OnCancel
            CleanUp()
        End Sub

        Private Sub bntCancelAddEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntCancelAddEdit.Click
            CleanUp()
        End Sub
    End Class
End Namespace

