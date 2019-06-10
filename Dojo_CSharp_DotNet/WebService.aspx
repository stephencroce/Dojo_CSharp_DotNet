<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebService.aspx.cs" Inherits="TestCSharpApp.WebService" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>TESTING - XML Web Requests</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lnkWizP3Finish_Click">LinkButton</asp:LinkButton>
        <br />
        
        
        <asp:Panel ID="Panel1" runat="server">
        
       
            <asp:Xml ID="Xml1" runat="server" TransformSource="XSLT/myXSLT.xslt" ></asp:Xml>
        
        
        </asp:Panel>
        
        
    </div>
    </form>
</body>
</html>
