<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letters.LW_IDR" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<!--// PAGE 1 of 1 //-->
<LW:PAGE runat=server id="PG_1" pagenumber="1" pagecount="3">
    <!--// LOGO //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align="right" style="padding-top:5px;"><ASP:PLACEHOLDER runat=server id="Img_Logo" /></TD>
            </TR>
        </TABLE>
    </DIV>

    <!--// TITLE Section //-->
    <DIV>
        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
            <TR>
                <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Incident Decision Request</U></TD>
            </TR>
        </TABLE>
    </DIV>
    
    <!--// Claim Data //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Customer Information</TD>
              </TR>            
              <TR>
                <TD valign=top width="1px" style="padding-top:5px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>CEI Claim Number:</NOBR></TD><TD width="100%" style="padding-top:5px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblClaimID /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Date of Loss:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblDOL /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:bold 10pt Sans-Serif;"><NOBR>Date Reported:</NOBR></TD><TD width="100%" style="padding-right:10px; font:bold 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id=lblDateReported /></TD>
              </TR>                            
            </TABLE>
          </TD>
          <TD valign=top width="50%">
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Client Contact Information</TD>
              </TR>
              <TR>
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif; padding-top:5px;">Organization Contact</TD>
              </TR>        
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; padding-top:5px;"><NOBR>Contact:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif; padding-top:5px;"><asp:DropDownList Runat=server ID="cmbOrgContact"/><ASP:LABEL runat=SERVER id="lblOrgContact" /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Phone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblOrgPhone" /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fax:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblOrgFax" /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Email:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblOrgEmail" /></TD>
              </TR>
              <TR>
                <TD valign=top colspan=2 style="font:bold 10pt Sans-Serif; padding-top:5px;">Decision Contact</TD>
              </TR>        
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif; padding-top:5px;"><NOBR>Contact:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif; padding-top:5px;"><asp:DropDownList Runat=server ID="cmbDecisionContact"/><ASP:LABEL runat=SERVER id="lblDecisionContact" /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Phone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDecisionPhone" /></TD>
              </TR>  
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fax:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDecisionFax" /></TD>
              </TR>
              <TR>
                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Email:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDecisionEmail" /></TD>
              </TR>              
            </TABLE>
          </TD>
        </TR>           
      </TABLE>
    </DIV>
    
    <!--// Organization Information //-->
    <asp:PlaceHolder Runat=server ID="ph_OrgInfo" Visible=False>
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Organization Information</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelOneName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelOneValue" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelTwoName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelTwoValue" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelThreeName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelThreeValue" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelFourName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelFourValue" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelFiveName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelFiveValue" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR><ASP:LABEL runat=SERVER id="lblLevelSixName" />:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblLevelSixValue" /></TD>
                </TR>                                                                
                </TABLE>                                
            </TD>
        </TR>
      </TABLE>
    </DIV>
    </asp:PlaceHolder>

 <!--// Driver Information //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Driver Information</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Driver:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverName" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Relationship:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverRelationship" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Business Phone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverBusinessPhone" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Home Phone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverHomePhone" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Employee:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverEmployee" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Client Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverClientName" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Organization Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblDriverOrgName" /></TD>
                </TR>
              </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
                <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                    <asp:PlaceHolder Runat=server ID="phCustomReqData"/>  
                </TABLE>
            </TD>            
        </TR>
      </TABLE>
    </DIV>
</LW:PAGE>

<LW:PAGE runat=server id="PG_2" pagenumber="2" pagecount="3">
<!--// Vehicle Information //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Vehicle Information</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fleet/Unit #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleFleet" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Year:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleYear" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Make:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleMake" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Model:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleModel" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Color:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleColor" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>VIN:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleVIN" /></TD>
                </TR>
              </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Plate #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehiclePlate" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Exact Mileage:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleMileage" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Vehicle In Shop:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleInShop" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Vehicle Drivable:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleDrivable" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Unit #:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVehicleUnitNumber" /></TD>
                </TR>
              </TABLE>                                
            </TD>            
        </TR>
      </TABLE>
    </DIV>
<!--// Incident Details //-->
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top colspan=2 style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Incident Details</TD>
        </TR>
        <TR>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Driver in GE Rental:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentRental" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Damage Details:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentDetails" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Description:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentDescription" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Subrogation:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentSubro" /></TD>
                </TR>
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Personal Use:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentPersonalUse" /></TD>
                </TR>
              </TABLE>                                
            </TD>
            <TD valign=top width="50%" style="padding-top:5px;">
              <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Accident Description:</NOBR></TD>
                </TR>
                <TR>
                    <TD style="padding-left:10px; padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblIncidentAccidentDescription" /></TD>
                </TR>                
              </TABLE>                                
            </TD>            
        </TR>
      </TABLE>
    </DIV>
    
    <DIV style="margin-top:10px;">
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD valign=top width="50%">
            <!--// Estimate Details //-->
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Estimate Details</TD>
                </TR>
                <TR>
                    <TD valign=top style="padding-top:5px;">
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Assignment Date:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateAssignmentDate" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Estimate:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateAmount" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Revised Estimate:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateRevisedAmount" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Open Amt:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateOpenAmt" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Supplement:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateSupplement" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Remaining Lease Book:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateRemainingLeaseBook" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Open Items:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblEstimateOpenItems" /></TD>
                            </TR>
                        </TABLE>                                
                    </TD>
                </TR>
            </TABLE>
          </TD>
          <TD valign=top width="50%">
            <!--// Vendor Information //-->
            <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                <TR>
                    <TD valign=top style="border-bottom:solid 1px #000000; font:bold 12pt Sans-Serif;">Vendor Information</TD>
                </TR>
                <TR>
                    <TD valign=top style="padding-top:5px;">
                        <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Vendor Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorName" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Contact Name:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorContactName" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Address:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorAddress" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>CSZ:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorCSZ" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Phone:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorPhone" /></TD>
                            </TR>
                            <TR>
                                <TD valign=top width="1px" style="padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;"><NOBR>Fax:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblVendorFax" /></TD>
                            </TR>
                        </TABLE>                                
                    </TD>
                </TR>
            </TABLE>
          </TD>
        </TR>           
      </TABLE>
    </DIV>
</LW:PAGE>

<LW:PAGE runat=server id="PG_3" pagenumber="3" pagecount="3">
    <!--// TITLE Section //-->
    <DIV>
      <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">
        <TR>
          <TD align=CENTER style="font:bold 14pt Sans-Serif;"><U>Client Decision</U></TD>
        </TR>
      </TABLE>
    </DIV>
    
   <DIV style="margin-top:10px; padding-left:10px; padding-right:5px; font:normal 10pt Sans-Serif;">
       <B><NOBR>CEI Claim Number: <ASP:LABEL runat=SERVER id="lblClientCEIClaimNumber" /></NOBR></B><P>
       <b><i><u><NOBR>Approved:</NOBR></u></i></b><P>
       Appraiser/Shop estimate approved, please begin/resume repairs.
      
        <table border=0 cellpadding=0 cellspacing=0>
            <TR>
                <TD valign=top width="1px" style="padding-left:30px; padding-right:5px; padding-top:5px; font:normal 10pt Sans-Serif;"><NOBR>PO Amount:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblClientPOAmount" /></TD>
            </TR>
            <TR>
                <TD valign=top width="1px" style="padding-left:30px; padding-right:5px; padding-bottom:5px; font:normal 10pt Sans-Serif;"><NOBR>Open Amount:</NOBR></TD><TD width="100%" style="padding-right:10px; font:normal 10pt Sans-Serif;"><ASP:LABEL runat=SERVER id="lblClientOpenAmount" /></TD>
            </TR>
        </table>
        
        Be advised that you are approving the estimate and the Open Amount. CEI will tear down all vehicle s with an open amount to determine additional costs, prior to issuing any approvals.<P>
        
        <b><i><u><NOBR>Denied:</NOBR></u></i></b><P>

        Vehicle is a Total Loss, GECFS Remarketing Services (RS) to sell vehicle
        <ul>
        <li><b>U.S. Only</b>- fleet customer <b><i>MUST</i></b> fax a Vehicle Termination Notice to RS at (952) 828-2321
        <LI><b>Canada Only</b>- fleet customers <b><i>MUST</i></b> fax a UVSN to RS at (905) 206-6407
        </ul>
        Vehicle is a total loss: <b><i>Client</i></b> will handle salvage.  (Vehicle to be removed within 30 days)
        <ul>
        <li>Vehicle will be turned in "as is." No Repairs are to be done.
        <li>No decision at this time; will advise.
        </ul>

        <i><b>** WARNING:</b></i><br/>
        RS must receive a vehicle termination notice or a UVSN to process sale.<br>
        Lease billing will continue until Term Notice is received.<br>
        Storage fees and any incurred costs (including lien sale if applicable) are the responsibility of your company.<p>

        <table width="550px" cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="70%" style="border-top:1px black solid"><font size="-1">Signature</font></td>
                <td width="30%" style="border-top:1px black solid"><font size="-1">Date</font></td>
            </tr>
        </table>
    </DIV>
    
      <!--// Additional Comments //-->
      <div style="margin-top:30px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" style="font:bold 10pt Sans-Serif; border-bottom:solid 1px #000000">Comments:</td>
          </tr>
          <tr>
            <td valign="top" style="font:normal 10pt Sans-Serif;padding-top:5px; padding-bottom:5px; padding-left:10px; padding-right:10px;"><LW:EditBox runat="server" id="txtComments" width="100%" height="100px" /></td>
          </tr>
          <tr>
            <td style="border-top:solid 1px #000000;">&nbsp;</td>
          </tr>          
        </table>
      </div>  

    <DIV style="margin-top:20px; padding-left:10px; font:bold 10pt Sans-Serif;">
        <u>Please reply to this request in any one of the following ways:</u><br>
        Email: GECFSApprovals@CEINetwork.com<br>
        Phone: 800-388-7467<br>
        Fax: 215-485-4652
    </DIV>
    

</LW:PAGE>