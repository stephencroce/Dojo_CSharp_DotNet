<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Templates.DriverPenalty" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<table border="0" cellpadding="0" cellspacing="0" style="padding-left:20px;">
    <tr>
      <td class="TextBold">Unit Number:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Helper.Claim.ClaimVehicle.ClientVehNo%></td>
    </tr>
    <tr> 
      <td class="TextBold">AstraZeneca Assigned Driver:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Me.Employee%></td>
    </tr>
    <tr>
      <td class="TextBold">Driver at Time of Accident:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Me.Driver%></td>
    </tr>
    <tr>
      <td class="TextBold">Date of Loss:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Helper.DateOfLoss%></td>
    </tr>
    <tr>
      <td class="TextBold">Claim Number:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Helper.Claim.ClaimID%></td>
    </tr>
    <tr>
      <td class="TextBold">Type of Accident/Incident:&nbsp;&nbsp; </td>
      <td class="TextNormal">At-Fault Accident </td>
    </tr>
    <tr>
      <td class="TextBold">Due:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Me.Payment%></td>
    </tr>
    <tr>
      <td class="TextBold">Due Date:&nbsp;&nbsp; </td>
      <td class="TextNormal"><%=Me.NextDueDate.DisplayDate()%> </td>
    </tr>
  </table>