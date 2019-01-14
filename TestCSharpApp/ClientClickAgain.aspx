<%@ Page Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="ClientClickAgain.aspx.cs" Inherits="TestCSharpApp.ClientClickAgain" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script language="javascript" >

function hello()
{
    window.alert('hello');
}

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
ooonga boonga
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="hello();">LinkButton</asp:LinkButton>
boogie oogie
</asp:Content>
