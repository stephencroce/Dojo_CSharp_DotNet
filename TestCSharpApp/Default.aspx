<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestCSharpApp._Default" %>

<%@ Register Assembly="SharpPieces.Web.Controls" Namespace="SharpPieces.Web.Controls" TagPrefix="piece" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Messed up page</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            <asp:Button ID="Log4Button" runat="server" Text="Generate Log 4 Error Message" OnClick="Log4Button_Click" />
        </div>
        <div>
            sharp pieces carap:
       
        <asp:Button ID="btnPostback" Text="Do postback!" runat="server" /><br />
            ExtendedDropDownList populated from code-behind:
            <br />
            <piece:ExtendedDropDownList ID="ddl" runat="server">
            </piece:ExtendedDropDownList><br />
            <hr />
            ExtendedDropDownList populated from ASPX:
            <br />
            <piece:ExtendedDropDownList ID="ExtendedDropDownList1" runat="server">
                <ExtendedItems>
                    <piece:ExtendedListItem GroupingText="Group 1" Text="My item"
                        Value="1" GroupingType="New"></piece:ExtendedListItem>
                    <piece:ExtendedListItem Text="My item2" Value="2"
                        GroupingType="inherit"></piece:ExtendedListItem>
                </ExtendedItems>
            </piece:ExtendedDropDownList><br />
            <br />

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
        <div style="border: blue dotted 1px;">
            <div>disable multi click crap</div>
            <asp:Button Text="click me a shitload of times to see conspiracy theories." ID="btnConspiracyTheory" OnClick="btnConspiracyTheory_Click" runat="server" />
            <button id="btnClearIt" onclick="clearConspiracies(); return false;">clear conspiracies</button>
        </div>
        <asp:Label runat="server" Text="conspiracy theory here." ID="lblConspiracyTheory"></asp:Label>
        <hr />
        <div style="border: dotted blue 1px;">
            <b>Nuget Crap:</b>  Do stupid math calculation here:<asp:Label runat="server" ID="lblStupidMath" Text="tried to inject stupid math reference with Nuget....it's not calculating...."></asp:Label>
            <asp:Button runat="server" ID="btnChoke" Text="choke" OnClick="btnChoke_Click" />
        </div>
        <div style="border: dotted orange 2px;">
            <asp:Button runat="server" ID="btnGuid" Text="do stupid guid thing" OnClick="btnGuid_Click" />
            <b>guid Crap:</b>
            <asp:Literal ID="litGuidTranslate" runat="server" Text="guid literal" />
        </div>
    </form>
    <div>
         <button onclick="stupidRecursion();">stupid recursion</button>
    </div>
    <script type="text/javascript">
        function clearConspiracies() {
            //window.alert('clearing');
            var lbl = window.document.getElementById('lblConspiracyTheory');
            console.log(lbl);
            lbl.innerHTML = '';

        }
    </script>
<script type="text/javascript">
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number[]}
 */

 function TreeNode(val) {
      this.val = val;
      this.left = this.right = null;
 }

var root = [1, null, 2, 3];
        

    var preorderTraversal = function (root) { 

        var result = [];
    for (i = 0; i <= root.length - 1; i++) {
        //console.log(root[i]);        
        }
        result.push("hello");
        result.push("hello1");
        result.push("hello2");
    return result;
};

    console.log(preorderTraversal(root));

</script>
<script language="javascript">

    function stupidRecursion() {

//A recursive function should have the following properties so that it does not result in an infinite loop:

//A simple base case (or cases) — a terminating scenario that does not use recursion to produce an answer.
//A set of rules, also known as recurrence relation that reduces all other cases towards the base case.

//public static long factorial(int n) { 
//    if (n == 1) return 1; 
//    return n * factorial(n-1); 
//} 
        var factorial = function (n) {
            if (n == 1) return 1;
            return n * factorial(n - 1);
        }

        //Input: ["h","e","l","l","o"]
        //Output: ["o","l","l","e","h"]
        //Example 2:

        //Input: ["H","a","n","n","a","h"]
        //Output: ["h","a","n","n","a","H"]
        /**
     * @param {character[]} s
     * @return {void} Do not return anything, modify s in-place instead.
     */
        var reverseArray = function (stringArray, start=0, end=0) {
          
            if (start == 0 && end == 0) {
                var start = 0;
                var end = stringArray.length;
         
            }
            if (start >= (stringArray.length)/2 ) {
                return stringArray;
            }            
            var temp = stringArray[end-1];
            stringArray[end-1] = stringArray[start];
            stringArray[start] = temp;

            return reverseArray(stringArray, start+1, (end)-1);
        };  
        
        var input1 = ["t", "r", "i"];
        var input2 = ["q", "u", "a", "d"];
        var input3 = ["h", "e", "l", "l", "o"];
        var input4 = ["s", "e", "x", "t", "e", "t"];
        //window.alert("factorial of 5 is: " + factorial(5));
        console.log("factorial of 5 is: " + factorial(5));
        //window.alert("the output is: " + reverseArray(input1));
        console.log("the output is: " + reverseArray(input1));
        console.log("the output is: " + reverseArray(input2));
        console.log("the output is: " + reverseArray(input3));
        console.log("the output is: " + reverseArray(input4));

    }
</script>
</body>
</html>
