<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wizard.aspx.cs" Inherits="TestCSharpApp.Wizard.Wizard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" 
            ActiveStepIndex="1" onload="Wizard1_Load" >
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvValidateName" runat="server" ErrorMessage="required!" ControlToValidate="txtName" />
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
              you're not supposed to see this unless the validation works right.</asp:WizardStep>
        </WizardSteps>
        <StartNavigationTemplate>
        <asp:LinkButton ID="lnkNextp1" runat="server" CommandName="MoveNext">Next</asp:LinkButton>
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:LinkButton ID="lnkNextp2" runat="server" CommandName="MoveNext">Next</asp:LinkButton>
        </StepNavigationTemplate>
    </asp:Wizard>
    
    
        <asp:Xml ID="Xml1" runat="server"  ></asp:Xml>
    </div>
    </form>

</body>
</html>
