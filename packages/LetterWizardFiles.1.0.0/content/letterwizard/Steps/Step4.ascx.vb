Namespace Steps
    Public Class Step4
        Inherits [Step]

        Protected WithEvents lblRecipients As System.Web.UI.WebControls.Label
        Protected WithEvents cmbEmail As Controls.Recipient
        Protected WithEvents cmbFax As Controls.Recipient
        Protected WithEvents lblSubject As System.Web.UI.WebControls.Label
        Protected WithEvents txtSubject As System.Web.UI.WebControls.TextBox
        Protected WithEvents lblComments As System.Web.UI.WebControls.Label
        Protected WithEvents txtComments As System.Web.UI.WebControls.TextBox

        Public Overrides ReadOnly Property Title() As String
            Get
                Return CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Wizard_Step4")
            End Get
        End Property
#Region " Base Class Overrides "

        Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
            MyBase.OnInit(e)

            cmbEmail.Title = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0001") ' "E-mail Recipients: {} Currently Selected."
            cmbEmail.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0002") ' "Add new e-mail recipient."
            cmbFax.Title = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0003") ' "Fax Recipients: {} Currently Selected."
            cmbFax.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0004") ' "Add new fax recipient."
            lblSubject.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lbl_subject") '  "Subject:"
            lblComments.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0005") ' "Comments:"
            lblRecipients.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "LW0006") ' "Recipients:"
        End Sub

        Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
            MyBase.OnLoad(e)
            bntSend.Enabled = False
            bntNext.Enabled = False

            cmbEmail.RecipientType = CEI.Application.Intelliclaim.UserService.LW.Controls.Recipient.eRecipientType.Email
            cmbFax.RecipientType = CEI.Application.Intelliclaim.UserService.LW.Controls.Recipient.eRecipientType.Fax

            txtComments.Text = Me.Parent.Comment
            txtSubject.Text = Me.Parent.Subject
        End Sub

        Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
            MyBase.OnPreRender(e)
            If Me.Parent.Subject.Length = 0 Then
                If Me.Parent.TemplateID > 0 Then
                    'Dim Template As Letter = Me.Page.LoadControl(Index.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateID).Module)
                    Dim Template As Letter = Me.Page.LoadControl(Index.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateId).Languages.Item(Me.Parent.LanguageId).Path)

                    txtSubject.Text = String.Format(Template.Subject, Me.Parent.Claim.ClaimID)
                End If
            Else
                txtSubject.Text = Me.Parent.Subject
            End If

            cmbEmail.Items.Clear()
            cmbFax.Items.Clear()

            cmbEmail.Items.AddRange(Me.Parent.EmailRecipients)
            cmbFax.Items.AddRange(Me.Parent.FaxRecipients)

            For Each Item As Controls.RecipientItem In cmbEmail.Items
                If Item.Selected = True Then bntNext.Enabled = True
            Next

            For Each Item As Controls.RecipientItem In cmbFax.Items
                If Item.Selected = True Then bntNext.Enabled = True
            Next
        End Sub
#End Region


        Private Sub txtComments_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtComments.TextChanged
            Me.Parent.Comment = txtComments.Text
        End Sub

        Private Sub txtSubject_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSubject.TextChanged
            Me.Parent.Subject = txtSubject.Text
        End Sub

        Private Sub cmbEmail_ItemListChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbEmail.ItemListChanged
            Me.Parent.EmailRecipients = cmbEmail.Items
        End Sub

        Private Sub cmbFax_ItemListChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbFax.ItemListChanged
            Me.Parent.FaxRecipients = cmbFax.Items
        End Sub

    End Class
End Namespace

