Namespace Steps
  Public Class Step3
    Inherits [Step]

    Protected WithEvents lblPageSize As System.Web.UI.WebControls.Label
    Protected WithEvents cmbPageSize As System.Web.UI.WebControls.DropDownList
    Protected WithEvents bntEdit As CEI.Application.Common.Web.UI.WebControls.CEIButton
    Protected WithEvents bntUpdate As CEI.Application.Common.Web.UI.WebControls.CEIButton
    Protected WithEvents bntPrint As CEI.Application.Common.Web.UI.WebControls.CEIButton
    Protected WithEvents bntSaveHTML As CEI.Application.Common.Web.UI.WebControls.CEIButton
    Protected WithEvents phModule As System.Web.UI.WebControls.Panel
    Protected WithEvents phPrint As System.Web.UI.WebControls.Panel
    Protected tdSaveHTML As System.Web.UI.HtmlControls.HtmlTableCell
    Private Template As Letter
    Public Event OnUpdate(ByVal sender As Object, ByVal e As EventArgs)
    Public Event OnEdit(ByVal sender As Object, ByVal e As EventArgs)
    Public Event OnSaveHTML(ByVal sender As Object, ByVal e As EventArgs)

    Public Overrides ReadOnly Property Title() As String
      Get
        Return CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Letter_Wizard_Step3")
      End Get
    End Property

#Region " Base Class Overrides "
    Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
      MyBase.OnInit(e)

      bntEdit.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10736")  '"Edit"
      bntUpdate.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10735")  '"Update"
      bntPrint.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "Lbl_Print")  '"Print"
      bntSaveHTML.Text = CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "10520")  '"Save"
    End Sub



    Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
      MyBase.OnLoad(e)

      bntSend.Enabled = False

      cmbPageSize.Items.Add(New ListItem(CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "21029"), 0)) 'Standard
      cmbPageSize.Items.Add(New ListItem(CEI.Application.Common.Framework.Globalization.ResourceReader.GetCommonResource(Common.Framework.Globalization.ResourceTableOption.Literal, "21030"), 1)) 'A4

      'Template = Me.Page.LoadControl(Index.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateID).Module)
      Template = Me.Page.LoadControl(Index.LetterPath & Me.Parent.Templates.Item(Me.Parent.TemplateId).Languages.Item(Me.Parent.LanguageId).Path)
      Template.ID = "Letter"
      phModule.Controls.Add(Template)

      'If Not Me.Parent.State = Index.eState.Edit Then
      '  ProcessTextBoxes(phModule.Controls)
      'End If

      'Currently this code doesn't work.  Will look into it when I have more time.
      'Need ability to take the viewed letter and then let the user download it as html.
      'If Me.Page.Request.ServerVariables("HTTP_HOST") = "localhost" Then tdSaveHTML.Visible = True

    End Sub

    'Private Sub ProcessTextBoxes(ByVal Ctrls As System.Web.UI.ControlCollection)
    '  For Each Ctrl As Control In Ctrls
    '    If TypeOf Ctrl Is TextBox Then
    '      Dim CtrlIndex As Integer = Ctrls.IndexOf(Ctrl)
    '      Dim CtrlLabel As New System.web.UI.WebControls.Label
    '      CtrlLabel.ID = "txt_" & Ctrl.ID
    '      If Me.Parent.TextValues.ContainsKey(Ctrl.ID) Then
    '        CtrlLabel.Text = Me.Parent.TextValues(Ctrl.ID)
    '      End If

    '      Ctrls.AddAt(CtrlIndex, CtrlLabel)
    '      Ctrls.Remove(Ctrl)
    '    End If
    '    If Ctrl.HasControls Then ProcessTextBoxes(Ctrl.Controls)
    '  Next
    'End Sub

    Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
      MyBase.OnPreRender(e)
      bntEdit.Visible = Not Me.Parent.State = Index.eState.Edit
      bntUpdate.Visible = Me.Parent.State = Index.eState.Edit
      bntNext.Enabled = Not Me.Parent.State = Index.eState.Edit
      cmbPageSize.Enabled = Not Me.Parent.State = Index.eState.Edit

      bntPrint.Attributes.Add("OnClick", "OnPrint(); return false;")

      If Template.CanEdit = False Then bntEdit.Visible = False
      If Template.CanPrint = False Then bntPrint.Visible = False
      If Template.CanResize = False Then cmbPageSize.Visible = False
    End Sub
#End Region

    Private Sub bntEdit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntEdit.Click
      Me.Parent.State = Index.eState.Edit
      RaiseEvent OnEdit(sender, e)
    End Sub

    Private Sub cmbPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbPageSize.SelectedIndexChanged
      Me.Parent.PageSize = cmbPageSize.SelectedValue
    End Sub

    Private Sub bntUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntUpdate.Click
      Me.Parent.State = Index.eState.Normal
      RaiseEvent OnUpdate(sender, e)
    End Sub

    Private Sub bntSaveHTML_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bntSaveHTML.Click
      ' Currently this code doesn't work in this enviroment the response object has seemed to already have completed its rotation and wont allow for it to be modified for an export of data.

      Dim sHTML As String = "<HEAD><TITLE>HTML Letter</TITLE></HEAD><BODY>{0}</BODY>"

      Dim FW As New System.IO.StringWriter
      Dim TW As New System.Web.UI.HtmlTextWriter(FW)

      Template.RenderControl(TW)

      Dim sResult As String = String.Format(sHTML, FW.ToString)
      Dim Encoding As New System.Text.ASCIIEncoding
      Dim Bytes() As Byte = Encoding.GetBytes(sResult)

      TW.Close()
      FW.Close()

      Me.Page.Response.Clear()
      Me.Page.Response.ClearContent()
      Me.Page.Response.ClearHeaders()
      Me.Page.Response.AddHeader("Content-Type", "binary/octet-stream")
      Me.Page.Response.AddHeader("Content-Disposition", "attachment; filename=Letter.html")
      Me.Page.Response.AddHeader("Content-Transfer-Encoding", "binary")
      Me.Page.Response.AddHeader("Content-length", Bytes.Length.ToString())
      Me.Page.Response.Flush()
      Me.Page.Response.BinaryWrite(Bytes)
      Me.Page.Response.Flush()
      Me.Page.Response.End()
    End Sub
  End Class
End Namespace

