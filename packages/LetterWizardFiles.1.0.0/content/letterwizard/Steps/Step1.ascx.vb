Namespace Steps
    Public Class Step1
        Inherits [Step]

        Protected WithEvents phToolbar As System.Web.UI.WebControls.Panel
        Protected WithEvents lblTemplate As System.Web.UI.WebControls.Label
        Protected WithEvents cmbTemplates As System.Web.UI.WebControls.DropDownList
        Protected WithEvents bntPreview As CEI.Application.Common.Web.UI.WebControls.CEIButton
        Protected WithEvents lblDescription As System.Web.UI.WebControls.Label
        Protected WithEvents lblDescriptionResource As System.Web.UI.WebControls.Label
        Protected WithEvents lblSource As System.Web.UI.WebControls.Label
        Protected WithEvents lblSourceResource As System.Web.UI.WebControls.Label
        Protected WithEvents phModule As System.Web.UI.WebControls.Panel
        Protected WithEvents lblLanguage As System.Web.UI.WebControls.Label
        Protected WithEvents phLanguage As System.Web.UI.WebControls.PlaceHolder
        Protected WithEvents cmbLanguages As System.Web.UI.WebControls.DropDownList
        Protected trDevelopment As System.Web.UI.HtmlControls.HtmlTableRow

        Protected WithEvents txtDevPath As System.Web.UI.WebControls.TextBox
        Protected WithEvents bntDevPath As System.Web.UI.WebControls.Button


        Public Overrides ReadOnly Property Title() As String
            Get
                Return CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Wizard_Step1")
            End Get
        End Property

#Region " Base Class Overrides "
        Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
            MyBase.OnInit(e)


            Me.lblLanguage.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lblChangeLanguage") '"Change language"
            Me.bntPreview.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "bnt_preview") '"Preview"
            Me.lblTemplate.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Template") '"Template:"
            Me.lblDescription.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "lbl_description") '"Description:"
            Me.lblSource.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Code_Module") '"Source:"
        End Sub

        Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
            MyBase.OnLoad(e)

            Me.bntBack.Enabled = False
            Me.bntSend.Enabled = False

           

            LoadTemplates()


            If Me.Page.Request.ServerVariables("HTTP_HOST") = "localhost" Or Me.Page.Request.ServerVariables("HTTP_HOST").Contains("debug") Then
              trDevelopment.Visible = True
            End If



        End Sub

        Private Sub LoadTemplates()
            If cmbTemplates.Items.Count = 0 Then
                cmbTemplates.Items.Add(New ListItem("[" & CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10778") & "]", "-1"))
                For Each Item As LetterTemplate.Template In Me.Parent.Templates
                    If Item.Languages.Count > 0 Then
                        cmbTemplates.Items.Add(New ListItem(Item.TemplateName, Item.TemplateId))
                        If Me.Parent.TemplateId = Item.TemplateId Then
                            cmbTemplates.SelectedIndex = cmbTemplates.Items.Count - 1
                        End If
                    Else
                        Dim i As Integer = Item.TemplateId 'this does nothing, here to set a break point and see which template were NOT being added
                    End If
                Next
            End If
        End Sub

        Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
            MyBase.OnPreRender(e)

            phLanguage.Visible = False

            bntNext.Enabled = Not cmbTemplates.SelectedIndex = 0
            If cmbTemplates.Items.Count > 0 Then
                Dim Item As LetterTemplate.Template = Me.Parent.Templates.Item(cmbTemplates.SelectedValue)
                If Not Item Is Nothing Then


                    lblDescriptionResource.Text = Item.TemplateName
                    If Not Item.Languages.Item(Me.Parent.LanguageId) Is Nothing Then
                        lblSourceResource.Text = Item.Languages.Item(Me.Parent.LanguageId).Path
                        If Item.Languages.Count > 1 Then
                            phLanguage.Visible = True
                            cmbLanguages.DataSource = Item.Languages
                            cmbLanguages.DataTextField = "LanguageName"
                            cmbLanguages.DataValueField = "LCID"
                            cmbLanguages.DataBind()

                            If cmbLanguages.Items.Count > 0 Then cmbLanguages.Items(0).Selected = True

                            For Each LI As ListItem In cmbLanguages.Items
                                If LI.Value = Me.Parent.LanguageId Then
                                    LI.Selected = True
                                Else
                                    LI.Selected = False
                                End If
                            Next
                        ElseIf Item.Languages.Count = 1 Then
                            Me.Parent.LanguageId = Item.Languages.ItemAt(0).LCID
                        Else
                            Me.Parent.LanguageId = System.Threading.Thread.CurrentThread.CurrentCulture.LCID
                        End If
                    End If

                End If
            End If
        End Sub
#End Region

        Public Overrides Sub bntNext_Click(ByVal sender As Object, ByVal e As System.EventArgs)
            Me.Parent.TemplateId = cmbTemplates.SelectedValue
            If cmbLanguages.SelectedValue.Length > 0 Then
                Me.Parent.LanguageId = cmbLanguages.SelectedValue
            End If
            MyBase.bntNext_Click(sender, e)
        End Sub

        Private Sub bntPreview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntPreview.Click
            If cmbTemplates.SelectedValue > 0 Then
                Me.Parent.State = Index.eState.Preview
                phModule.Controls.Clear()
                Dim Ctrl As Letter = LoadControl(Index.LetterPath & Me.Parent.TemplatePath)
                Ctrl.ID = "Letter"
                phModule.Controls.Add(Ctrl)
                phModule.Focus() 'annoying bug (feature). focus stays on DDL when you go to scroll the letter with wheel mouse it changes letters. set focus anywhere but the @#@# button
            End If
        End Sub

        Private Sub cmbLanguages_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbLanguages.SelectedIndexChanged
            Me.Parent.LanguageId = cmbLanguages.SelectedValue
        End Sub

        Private Sub cmbTemplates_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbTemplates.SelectedIndexChanged
            Me.Parent.TemplateId = cmbTemplates.SelectedValue
        End Sub

        Private Sub bntDevPath_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntDevPath.Click
            If cmbTemplates.SelectedValue > 0 Then
                Me.Parent.Templates.Item(cmbTemplates.SelectedValue).Languages.Item(Me.Parent.LanguageId).Path = txtDevPath.Text
            End If
        End Sub
    End Class
End Namespace

