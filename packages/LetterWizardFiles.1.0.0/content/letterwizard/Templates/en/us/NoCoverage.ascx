<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<table border="0" cellpadding="0" cellspacing="0" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="TOP">
      <!--// Header Section //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" style="padding-bottom:5px; border-bottom:solid 1px #000000; width:100%;">
          <tr>
            <td valign="top" width="50%" class="TextSmallNormal">
              <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%><br/>
              4850 Street Road, Suite 220<br/>
              Trevose, PA 19053
            </td>
            <td valign="top" width="50%" class="TextSmallNormal">
              Phone: 1-866-894-0386 (option 1)<br/>
              Fax: 1-215-485-4658<br/>
              www.ceinetwork.com
            </td>
          </tr>
        </table>
      </div>

      <!--// LOGO //-->
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="right" style="padding-top:5px;"><img alt="" src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/IC.gif" %>" /></td>
          </tr>
        </table>
      </div>

      <!--// TITLE Section //-->
      <div class="TextNormal">
        <%=Now.ToString("MMMM dd, yyyy")%><p />
        <%If Not Me.Contact Is Nothing Then%>
          <%=Contact.Name.Title.Literal()%> <%=Contact.Name.NameFirst()%> <%=Contact.Name.NameMiddle()%> <%=Contact.Name.NameLast()%><br \>
          <%=Contact.Address.TransformAddress(ContactComponetUtilities.FormatOptions.HTML)%>
        <%End If%>
      </div>
      
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="TextNormal CellPaddingRight">RE:</td>
            <td class="TextBold CellPaddingRight" align="right">Our Client:</td>
            <td class="TextNormal"><%=MyBase.Helper.ClientName%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Our Driver:</td>
            <td class="TextNormal"><%=Me.ClaimContact%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">CEI File#:</td>
            <td class="TextNormal"><%=MyBase.Helper.ClaimNumber%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Date of Loss:</td>
            <td class="TextNormal"><%=MyBase.Helper.DateOfLoss%></td>
          </tr>


          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Vehicle:</td>
            <td class="TextNormal"><%=Me.VehicleYear & " " & Me.VehicleMake & " " & Me.VehicleModel & " " & Me.VehicleStyle%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Plate:</td>
            <td class="TextNormal"><%=Me.VehiclePlate%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">VIN:</td>
            <td class="TextNormal"><%=Me.VehicleVin%></td>
          </tr>
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Unit #:</td>
            <td class="TextNormal"><%=Me.VehicleUnitNumber%></td>
          </tr>




     
          <tr>
            <td class="TextBold CellPaddingRight" align="right" colspan="2">Loss Amount:</td>
            <td class="TextNormal"><%If Not Me.LRFunds Is Nothing Then%><%=Me.LRFunds.TotalRequested.ToDisplayString()%><%End If%></td>
          </tr>
        </table>
      </div>

      <!--// Content //-->
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td class="TextNormal">
              <%If Not Me.Contact Is Nothing Then : If Me.Contact.Name.Title.Literal.Length > 0 Then%>
                Dear <%=Me.Contact.Name.Title.Literal & " " & Me.Contact.Name.NameLast%>:<p/>
              <%Else%>
                Dear <%=Me.Contact.Name.NameFirst & " " & Me.Contact.Name.NameLast%>:<p/>
              <%End If : End If%>

              We are writing you in regards to the above mentioned auto loss that you and/or your vehicle were involved in on the above mentioned date, with our client’s driver, <%=Me.ClaimContact%>.<p />
              CEI has been in touch with the insurance carrier that was provided to our driver, and they have informed us that there was no coverage for your vehicle on the date of this loss.
              With this being the circumstances, we ask that you contact us immediately to provide us with either the name of the carrier who insured your vehicle on that day or how you intend to re-imburse my client for their damages.
              Check or money order payments or monthly installment arrangements can be made.<p />
              Please make your draft payable to <b><i>"<%=Me.PayableTo()%>"</i></b> and send it to the address listed above.
              Please reference our file number in the memo portion of your check or money order.<p />
              You can contact us at 866-894-0386, opt. 1 with your valid insurance information or with any payment questions you may have.<p />

              <LW:EditBox runat="server" id="txtComments" width="100%" height="100px" /><p />

              Sincerely,<p />
              Team 5<br />
              <%=Me.GetProperCEIName(Me.OrgCountryId, "CEI Services")%>
            </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->


      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD Colspan="2" CLASS="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright <%=New DateTime().Year.ToString() %>, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%>. Legally Privileged and Confidential. Any unauthorized use or distribution is prohibited.</TD>
          
        </TR>
        <TR>
          
          <TD CLASS="TextSmallBold">Page 1 of 1</TD>
          <TD CLASS="TextSmallNormal" style="font:normal 5pt arial;" align="right">Templates/en/us/nocoverage</TD>
        </TR>
      </TABLE>
    </td>
  </tr>
</table>

<script runat="server">
    Public Overrides ReadOnly Property NTAccount() As String
        Get
            Return "CEI\Gateway2"
        End Get
    End Property
  
    Public Overrides ReadOnly Property Subject() As String
        Get
            Return Me.GetLiteral("Ltr_Wiz_Template_Title_5")
        End Get
    End Property
  
    Private Function Contact() As LW.Contact
        If MyBase.Index.Contacts.Count > 0 AndAlso MyBase.Index.ContactID > -1 Then
            Return CType(MyBase.Index.Contacts.Item(MyBase.Index.ContactID), LW.Contact)
        End If
        Return Nothing
    End Function
  
    Private Function TPContactName() As String
        If Me.Contact.Name.Title.Literal.Length > 0 Then
            Return Me.Contact.Name.Title.Literal & " " & Me.Contact.Name.NameLast
        Else
            Return Me.Contact.Name.NameFirst & " " & Me.Contact.Name.NameLast
        End If
    End Function
  
    Private Function ClaimContact() As String
        Dim Name As CEI.Application.Common.Framework.BusinessObject.ContactName = Nothing

        If Not MyBase.Helper.Claim.ClaimEmployee Is Nothing Then
            Name = MyBase.Helper.Claim.ClaimEmployee.Name
        ElseIf Not MyBase.Helper.Claim.ClaimContact Is Nothing Then
            Name = MyBase.Helper.Claim.ClaimContact.Name
        End If
    
        If Not Name Is Nothing Then
            Return Name.Title.Literal & " " & Name.NameFirst & " " & Name.NameLast
        End If
    
        Return String.Empty
    End Function
  
    Private Function LRFunds() As CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.LossRecovery.LRFunds
        Dim nResult As CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.LossRecovery.LRFunds = Nothing
        If Not Me.Contact Is Nothing AndAlso Me.Contact.Properties.ContainsKey("VehicleId") Then
            Dim VehId As Integer = Me.Contact.Properties.Item("VehicleId")
            If VehId > 0 Then
                Dim TPI As New CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.LossRecovery.ThirdPartyInfo(VehId)
        
                nResult = New CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.LossRecovery.LRFunds(TPI)
            End If
        End If
        Return nResult
    End Function
  
    Public Overrides ReadOnly Property Contacts() As CEI.Application.Intelliclaim.UserService.LW.Controls.MultiListBoxItemCollection
        Get
      
            Dim Items As New CEI.Application.Intelliclaim.UserService.LW.Controls.MultiListBoxItemCollection
            Dim Item As LW.Contact

            If Not MyBase.Helper.Claim Is Nothing Then
                ' Get a listing of Vehicle Contacts.
                'cei.Application.Intelliclaim.UserService.BusinessObject.LossNotice.
                Dim Vehicles As CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.OtherVehicleCollection = MyBase.Helper.Claim.OtherVehicles
          
                For Each Vehicle As CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.OtherVehicle In Vehicles
                    Dim TPI As New CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.LossRecovery.ThirdPartyInfo(Vehicle.EntityID)
          
                    If TPI.Responsible Then
                        Item = New LW.Contact

                        Item.Properties.Add("VehicleId", Vehicle.EntityID)
          
                        Item.Address.AddressLine1 = Vehicle.Owner.Address.AddressLine1
                        Item.Address.AddressLine2 = Vehicle.Owner.Address.AddressLine2
                        Item.Address.AddressLine3 = Vehicle.Owner.Address.AddressLine3
                        Item.Address.City = Vehicle.Owner.Address.City
                        Item.Address.CountryID = Vehicle.Owner.Address.CountryID
                        Item.Address.County = Vehicle.Owner.Address.County
                        Item.Address.PostalCode = Vehicle.Owner.Address.PostalCode
                        Item.Address.StateProvince = Vehicle.Owner.Address.StateProvince

                        Item.Digital.EmailWork = Vehicle.Owner.Digi.EmailWork
                        Item.Digital.EmailHome = Vehicle.Owner.Digi.EmailHome
                        Item.Digital.PhoneWork = Vehicle.Owner.Digi.PhoneWork
                        Item.Digital.PhoneHome = Vehicle.Owner.Digi.PhoneHome
                        Item.Digital.FaxWork = Vehicle.Owner.Digi.FaxWork
                        Item.Digital.FaxHome = Vehicle.Owner.Digi.FaxHome

                        Item.Name.NameFirst = Vehicle.Owner.Name.NameFirst
                        Item.Name.NameLast = Vehicle.Owner.Name.NameLast
                        Item.Name.NameMiddle = Vehicle.Owner.Name.NameMiddle

                        Item.Header = "<IMG SRC=""Images/Icons/dude3.gif"">&nbsp;" & Vehicle.Owner.Name.DisplayName

                        Items.Add(Item)
                    End If
                Next
          
            End If

            Return Items

        End Get
    End Property
</script>