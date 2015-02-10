<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestCSharpApp._Default" %>
<%@ Register Assembly="SharpPieces.Web.Controls" Namespace="SharpPieces.Web.Controls" TagPrefix="piece" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" runat="server" >LinkButton</asp:LinkButton>
        <asp:Button ID="Log4Button" runat="server" Text="Generate Log 4 Error Message" OnClick="Log4Button_Click" />
    </div>
    <div>
        
       sharp pieces carap:
       
        <asp:Button ID="btnPostback" Text="Do postback!" runat="server" /><br />
        ExtendedDropDownList populated from code-behind: <br />
        <piece:ExtendedDropDownList ID="ddl" runat="server">
        </piece:ExtendedDropDownList><br />
        <hr />
        ExtendedDropDownList populated from ASPX: <br />
        <piece:ExtendedDropDownList ID="ExtendedDropDownList1" runat="server">
            <ExtendedItems>
                <piece:ExtendedListItem GroupingText="Group 1" Text="My item" 
                Value="1" GroupingType="New"></piece:ExtendedListItem>
                <piece:ExtendedListItem Text="My item2" Value="2" 
                GroupingType="inherit"></piece:ExtendedListItem>
            </ExtendedItems>
        </piece:ExtendedDropDownList><br /><br />
       
       <asp:Label ID="lblSelGroup" runat="server"></asp:Label>
        

    </div>
    <div>
    <hr />
    local connectivity crap:
<%--        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="fullName" 
            DataValueField="AMDUpdateID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LocalDEVKenticoCMSTestConnectionString %>" 
            SelectCommand="SELECT [AMDUpdateID], [fullName] FROM [AMDUpdate]">
        </asp:SqlDataSource>--%>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    <hr />
    
    </div>
    
    </form>
</body>
</html>
