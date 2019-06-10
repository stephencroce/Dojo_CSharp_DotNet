<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
  

    <xsl:template match="/">     
        <!--<xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>-->
      <!--<xsl:value-of select="DCTOrderResponse/DCTOrderRequest/Customer/ID"/>-->
      <!--<xsl:value-of select="DCTOrderResponse/ErrorList"/>-->
      <!--<xsl:value-of select="DCTOrderResponse/ErrorList/Error"/>-->
      <fieldset class="fieldset">
        <legend>Lorem Ipsum:</legend>
        <table id="tblDoody">
          <th>
            <td colspan="2">this is the header for the nice formatted table</td>
          </th>
          <tr>
            <td>
              <xsl:value-of select="DCTOrderResponse/ErrorList/Error/Number"/>
            </td>
            <td>
              <xsl:value-of select="DCTOrderResponse/ErrorList/Error/Description"/>
            </td>
          </tr>
        </table>
      </fieldset >
    </xsl:template>
</xsl:stylesheet>




<!--
<DCTOrderResponse xsi:noNamespaceSchemaLocation="http://www.doody.com/ws/xsd/dct/DCTOrderResponse.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <DCTOrderRequest>
    <Customer>
      <ID>1234521243</ID>
      <DistributorCustomerID>12345005034</DistributorCustomerID>
      <Firstname>Stephen</Firstname>
      <Lastname>Croce</Lastname>

      <Affiliation>STEPHEN CROCE</Affiliation>
      <BillingAddress1>Stephen Croce</BillingAddress1>
      <BillingAddress2>
      </BillingAddress2>
      <BillingCity>
      </BillingCity>
      <BillingState>
      </BillingState>

      <BillingCountry>
      </BillingCountry>
      <BillingPostalCode>
      </BillingPostalCode>
      <Phone>)</Phone>
      <Fax>)</Fax>
      <Email>StephenCroce)@technotects.com</Email>

    </Customer>
    <Order>
      )
      <Edition>2010</Edition><PurchaseDate>2011-07-20</PurchaseDate><NotifyOthers>true</NotifyOthers><ProductID>61</ProductID><StandingOrder>N</StandingOrder>
    </Order>
  </DCTOrderRequest>
  <ErrorList Count="1">
    <Error>
      <Number>3011</Number>

      <Source>XDCT.CallHandler.OrderRequestXML</Source>
      <Description>Customer not found in database.</Description>
    </Error>
  </ErrorList>
</DCTOrderResponse>
-->