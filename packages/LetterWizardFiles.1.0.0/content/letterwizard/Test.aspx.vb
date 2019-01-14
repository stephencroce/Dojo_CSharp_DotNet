Public Class Test
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Protected phCtrl As System.Web.UI.WebControls.PlaceHolder

    Public Const LetterPath As String = "~/LetterWizard/"

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        '<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">

        Dim Ctrl As Letter
        Dim Path As String = Me.Request.QueryString("Path")

        If Not Path Is Nothing AndAlso Path.Length > 0 Then
            Ctrl = Me.Page.LoadControl(LetterPath & Path)
            phCtrl.Controls.Add(Ctrl)
        End If
    End Sub

End Class
