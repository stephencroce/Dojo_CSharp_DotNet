<%@ Page validateRequest="false" Language="vb" AspCompat="True" AutoEventWireup="false" Codebehind="Dialog.aspx.vb" Inherits="CEI.Application.Intelliclaim.UserService.LW.Dialog" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
        <!--// This Control has to be called "LetterWizard" //-->
        <LW:Index runat=server id="LetterWizard"></LW:Index>
        
        <SCRIPT>
            function CloseDialog(value) {
                if (dialogArguments != null) {
                    if (dialogArguments['result'] != null) {
                        dialogArguments['result'] = value
                    } else {
                        // dialogArguments = new Array();
                        // dialogArguments['result'] = value
                    }
                }
                window.close();
                return false
            }
        </SCRIPT>