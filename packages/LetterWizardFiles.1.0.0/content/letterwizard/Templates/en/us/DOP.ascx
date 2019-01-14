<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice" %>
<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->
<table border="0" cellpadding="0" cellspacing="0" class="<%=me.PageSizeCss%>">
  <tr>
    <td height="100%" valign="top">
      <div>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="center" class="TextTitle">
              Repair Authorization, Direction of Pay & Release<br />                
              <%--CEI Accident Services<br />--%>
              <%=IIf(Me.OrgCountryId = 2, "CEI Network Canada, Inc. - Accident Services<br />", "CEI Accident Services<br />")%>
              Please return this authorization via fax: (215) 485-4650<br />
              CEI Claim #: <%=MyBase.Helper.ClaimNumber%></td>
          </tr>
        </table>
      </div>
        <div style="margin-top:20px;">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td valign="top" width="50%">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="TextNormal CellLabel">Customer Name:</td>
                    <td class="TextNormal CellValue"><%=MyBase.Helper.ClientName%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Customer Claim #:</td>
                    <td class="TextNormal CellValue"><%=MyBase.Helper.Claim.ClientClaimNum%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Veh. Owner:</td>
                    <td class="TextNormal CellValue"><%=Vehicle_Owner_Name%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Owner Phone:</td>
                    <td class="TextNormal CellValue"><%=Vehicle_Owner_Phone%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Deductible:</td>
                    <td class="TextNormal CellValue"><%=VehicleDeductible%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Date of Loss:</td>
                    <td class="TextNormal CellValue"><%=MyBase.Helper.DateOfLoss%></td>
                  </tr>
                </table>
              </td>
              <td valign="top" width="50%">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="TextNormal CellLabel">Shop Name:</td>
                    <%--<td class="TextNormal CellValue"><%=MyBase.Helper.Vendor.DisplayName%></td>   --%>
                    <%Try%>
                      <td class="TextNormal CellValue"><%=MyBase.Helper.Vendor.DisplayName%></td>
                    <%Catch ex As Exception%>
                      <td class="TextNormal CellValue">&nbsp;</td>
                    <%End Try%>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Shop Contact:</td>
                    <td class="TextNormal CellValue"><%=Shop_Contact_Name%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Shop Phone:</td>
                    <%--<td class="TextNormal CellValue"><%=FormatPhone(MyBase.Helper.Vendor.Phone)%></td>--%>
                    <%Try%>
                      <td class="TextNormal CellValue"><%=FormatPhone(MyBase.Helper.Vendor.Phone)%></td>
                    <%Catch ex As Exception%>
                      <td class="TextNormal CellValue">&nbsp;</td>
                    <%End Try%>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">Vehicle:</td>
                    <td class="TextNormal CellValue"><%=mybase.Helper.VehicleMake%>, <%=mybase.Helper.VehicleModel%> <%=MyBase.Helper.VehiclePlate%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">P.O.I:</td>
                    <td class="TextNormal CellValue"><%=MyBase.Helper.DamageArea%></td>
                  </tr>
                  <tr>
                    <td class="TextNormal CellLabel">VIN #:</td>
                    <td class="TextNormal CellValue"><%=MyBase.Helper.VehicleVin%></td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </div>


      <!--// Content //-->
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border:solid 2px #000000;">
          <tr>
            <td class="TextSmallNormal" style="padding:10px 10px 0px 10px; font-size:10pt;">
              <div style="text-align:center; font-weight:bold;">***Acknowledgement of vehicle owners right to choose (Connecticut Claims Only)***</div><p />
              In accordance with Connecticut Senate House Bill 5152, effective 01/09/2009, this written acknowledgement is required prior to having your vehicle repaired by a repair facility participating in our network.<p />
              <div class="TextNormal" style="text-align:center; font-style:italic;">“I am aware of my right to choose the licensed repair shop where the damage to the motor vehicle will be repaired”</div>
              <div style="margin-top:25px;">
                <table border="0" cellpadding="0" cellspacing="15" width="100%">
                  <tr>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Vehicle Owner’s Signature</td>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Date</td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>
      </div>
      
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border:solid 2px #000000;">
          <tr>
            <td class="TextSmallNormal" style="padding:10px 10px 0px 10px;">
              <div style="text-align:center; font-weight:bold;">***Authorization to Repair***</div><p />
              I am the owner of this vehicle and authorize the above named auto repair facility to make the necessary repairs in accordance with the written appraisal provided. I authorize the above named shop to deliver the vehicle to a mechanical shop, alignment shop or any other facility required to complete the repairs and road test the vehicle. I agree the above named shop shall not be responsible for mechanical failures or other damages unrelated to the repair work performed. 
              <div style="margin-top:25px;">
                <table border="0" cellpadding="0" cellspacing="15" width="100%">
                  <tr>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Vehicle Owner’s Signature</td>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Date</td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>
      </div>
      
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border:solid 2px #000000;">
          <tr>
            <td class="TextSmallNormal" style="padding:10px 10px 0px 10px;">
              <div style="text-align:center; font-weight:bold;">***Direction of Pay***</div><p />
              I authorize Central Parking Systems / CEI Group Inc. to make payment on my behalf to the above mention auto repair shop for the portion of the repairs in which they are responsible for.
              <div style="margin-top:25px;">
                <table border="0" cellpadding="0" cellspacing="15" width="100%">
                  <tr>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Vehicle Owner’s Signature</td>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Date</td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>
      </div>
      
      <div style="margin-top:20px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="border:solid 2px #000000;">
          <tr>
            <td class="TextSmallNormal" style="padding:10px 10px 0px 10px;">
              <div style="text-align:center; font-weight:bold;">***Certificate of Satisfaction / Release***</div><p />
              I certified that I am the owner of the vehicle identified at the top of this form and that I have inspected the repairs made to my vehicle by the above listed auto repair facility. I certify that the damages as listed on the approved appraisal/estimate have been completed to my satisfaction by the above mentioned auto repair facility.
              <div style="margin-top:25px;">
                <table border="0" cellpadding="0" cellspacing="15" width="100%">
                  <tr>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Vehicle Owner’s Signature</td>
                    <td style="width:50%; border-top:solid 1px #000000;" class="TextSmallNormal">Date</td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
  <tr>
    <td height="1px">
      <!--// Footer //-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="TextSmallBold" style="padding-top:5px; border-top:solid 1px #000000;">Copyright 2010, <%=Me.GetProperCEIName(Me.OrgCountryId, "The CEI Group, Inc.")%> Proprietary and Confidential.</td>
          <td class="TextSmallNormal" style="font:normal 5pt arial; padding-top:5px; border-top:solid 1px #000000;" align="right">Templates/en/us/DOP</td>
        </tr>
        <tr>
          <td colspan="2" class="TextSmallBold" align="center">Page 1 of 1</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<script runat="server">
  Public ReadOnly Property Shop_Contact_Name() As String
    Get
      Try
        Dim LastName As String = MyBase.Helper.Vendor.GetPrimaryVendorContact.LastName
        Dim FirstName As String = MyBase.Helper.Vendor.GetPrimaryVendorContact.FirstName
        Dim DisplayName As String
      
        If Not String.Compare(LastName.ToLower, FirstName.ToLower) = 0 AndAlso LastName.Length > 0 Then
          DisplayName = LastName & ", " & FirstName
        Else
          DisplayName = FirstName
        End If
        Return DisplayName
      Catch ex As Exception
        Return String.Empty
      End Try
    End Get
  End Property
  
  Public ReadOnly Property Vehicle_Owner_Name() As String
    Get
      Return MyBase.Helper.ContactName
     
    End Get
  End Property
  
  Public ReadOnly Property Vehicle_Owner_Phone() As String
    Get

      Dim Phone As String = String.Empty
      
      If MyBase.Helper.ContactHomePhone.Length > 0 Then
        Phone = MyBase.Helper.ContactHomePhone
      ElseIf MyBase.Helper.ContactMobileHomePhone.Length > 0 Then
        Phone = MyBase.Helper.ContactMobileHomePhone
      ElseIf MyBase.Helper.ContactWorkPhone.Length > 0 Then
        Phone = MyBase.Helper.ContactWorkPhone
      ElseIf MyBase.Helper.ContactMobileWorkPhone.Length > 0 Then
        Phone = MyBase.Helper.ContactMobileWorkPhone
      Else
        Return String.Empty
      End If

      Return FormatPhone(Phone)
    End Get
  End Property
  
  Public ReadOnly Property FormatPhone(ByVal Phone As String) As String
    Get
      Select Case Phone.Length
        Case 11
          Return String.Format("{0} ({1}) {2}-{3}", Phone.Substring(0, 1), Phone.Substring(1, 3), Phone.Substring(4, 3), Phone.Substring(7))
        Case 10
          Return String.Format("({0}) {1}-{2}", Phone.Substring(0, 3), Phone.Substring(3, 3), Phone.Substring(6))
        Case 7
          Return String.Format("{0}-{1}", Phone.Substring(0, 3), Phone.Substring(3))
      End Select

      Return Phone
    End Get
  End Property
  
  Public Overrides ReadOnly Property NTAccount() As String
    Get
      Return "CEI\Gateway2"
    End Get
  End Property
  
  Public Overrides ReadOnly Property Subject() As String
    Get
      Return "Direction of Pay Letter:{0}"
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
 
  Public Overrides ReadOnly Property Contacts() As CEI.Application.Intelliclaim.UserService.LW.Controls.MultiListBoxItemCollection
    Get
      Dim Items As New CEI.Application.Intelliclaim.UserService.LW.Controls.MultiListBoxItemCollection
      Dim Item As LW.Contact

      If Not Me.Helper.Claim Is Nothing AndAlso Not Me.Helper.Workflow.Entity Is Nothing Then
        If TypeOf Me.Helper.Workflow.Entity Is CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.ShopEstimateAssignment Then
          Dim Vendor As New CEI.Application.Intelliclaim.UserService.BusinessObject.Vendor(CType(Me.Helper.Workflow.Entity, CEI.Application.Intelliclaim.UserService.BusinessObject.Workflow.ShopEstimateAssignment).VendorID)

          If Not Vendor Is Nothing Then
            Item = New LW.Contact

            Item.Address.AddressLine1 = Vendor.Details.Address.AddressLine1
            Item.Address.AddressLine2 = Vendor.Details.Address.AddressLine2
            Item.Address.AddressLine3 = Vendor.Details.Address.AddressLine3
            Item.Address.City = Vendor.Details.Address.City
            Item.Address.CountryID = Vendor.Details.Address.CountryID
            Item.Address.County = Vendor.Details.Address.County
            Item.Address.PostalCode = Vendor.Details.Address.PostalCode
            Item.Address.StateProvince = Vendor.Details.Address.StateProvince

            Item.Digital.EmailHome = Vendor.Details.HomeEmail
            Item.Digital.EmailWork = Vendor.Details.WorkEmail
            Item.Digital.PhoneWork = Vendor.Details.Phone1
            Item.Digital.PhoneHome = Vendor.Details.Phone2
            Item.Digital.FaxWork = Vendor.Details.Fax1
            Item.Digital.FaxHome = Vendor.Details.Fax2

            Item.Header = "<IMG SRC=""Images/Icons/office-building.gif"">&nbsp;" & Vendor.VendorName

            Items.Add(Item)
          End If

          For Each Contact As CEI.Application.Intelliclaim.UserService.BusinessObject.VendorContact In Vendor.Contacts
            If Contact.Active = 1 Then
              Item = New LW.Contact

              Item.Address.AddressLine1 = Contact.Address1
              Item.Address.AddressLine2 = Contact.Address2
              Item.Address.AddressLine3 = Contact.Address3
              Item.Address.City = Contact.City
              Item.Address.CountryID = Contact.CountryID
              Item.Address.County = Contact.County
              Item.Address.PostalCode = Contact.ZipPostalCode
              Item.Address.StateProvince = Contact.StateProvince

              Item.Digital.EmailWork = Contact.EmailAddress
              Item.Digital.PhoneWork = IIf(Contact.Phone1.Length > 0, Contact.Phone1, Vendor.Phone) 'Contact.Phone1
              Item.Digital.PhoneHome = Contact.Phone2
              Item.Digital.FaxWork = IIf(Contact.Fax1.Length > 0, Contact.Fax1, Vendor.Fax)  'Contact.Fax1
              Item.Digital.FaxHome = Contact.Fax2

              Item.Name.NameFirst = Contact.FirstName
              Item.Name.NameLast = Contact.LastName
              Item.Name.NameMiddle = Contact.MiddleName

              Item.Header = "<IMG SRC=""Images/Icons/dude3.gif"">&nbsp;" & Contact.ContactTypeName

              Items.Add(Item)
            End If
          Next
        End If
      End If

      Return Items

    End Get
  End Property
</script>