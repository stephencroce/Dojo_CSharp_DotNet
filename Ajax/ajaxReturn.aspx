<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxReturn.aspx.cs" Inherits="TestCSharpApp.Ajax.ajaxReturn" ContentType="text/json" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxReturn.aspx.cs" Inherits="TestCSharpApp.Ajax.ajaxReturn"  ContentType="application/x-www-form-urlencoded" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<asp:Literal ID="Literal1" runat="server" Text="yowsa yowsa yowsa. hello dere" />--%>
        <asp:Literal ID="Literal1" runat="server" />
        

    </div>
    <%--
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        SelectCommand="SELECT [FirstName] FROM [Employees]"></asp:SqlDataSource>
        --%>

    </form>
</body>
</html>
