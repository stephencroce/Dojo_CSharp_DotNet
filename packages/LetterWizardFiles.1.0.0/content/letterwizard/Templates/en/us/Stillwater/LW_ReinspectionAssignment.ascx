<%@ Control Language="vb" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>

<style>

    .page { width: 203mm; height: 266mm; page-break-after: always; font-family: Arial }
    .page--last { width: 203mm; height: 266mm; font-family: Arial; }

    .textSmall { font-size: 10pt; }
    .text { font-size: 10pt; }
    .textLarge { font-size: 12pt; }
    
    .textBold { font-weight: bold; }
    .textUnderline { text-decoration: underline; }

    .textItalic { font-style: italic; }

    ul.SpecialInstructions li {
    margin-top:10px;
    }
    .SquareTextBox {
    height:25px;
    }
    .Square {
    margin-right:3px;
    }

    .auto-style3 {
        height: 97px;
    }

    .auto-style5 {
        height: 118px;
    }

    .auto-style6 {
        width: 100%;
    }

    .auto-style7 {
        width: 20%;
    }

    .auto-style9 {
        font-size: 10pt;
        height: 71px;
    }
    .auto-style10 {
        font-size: 10pt;
        height: 64px;
    }
    .auto-style11 {
        font-size: 10pt;
        height: 60px;
    }
    .auto-style12 {
        font-size: 10pt;
        height: 57px;
    }
    .auto-style13 {
        font-size: 10pt;
        width: 41%;
    }

</style>

<!--// PAGE 1 of 3 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        CEI Insurance Services
                        4850 Street Road, Suite 210 <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">
                        Phone: 1-877-307-0460 <br />
                        Fax: 1-215-485-4663 <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body -->
    <tr>
        <td width="100%" class="auto-style3">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                    <td align="left" style="width:33%" class="text">&nbsp;</td>
                    <td align="center" style="width:33%; text-align: center" class="textLarge">
                        <span class="text textUnderline textLarge textBold">Re-inspection Assignment Sheet</span><br />
                        <span class="text textUnderline textLarge textBold">Vehicle Status - <%= Me.VehicleStatus%></span>
                    </td>
                    <td align="right" style="width:33%; text-align: right;">
                        <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/cei_insurance_logo.png"%>" style="width: 70px; height: 28px;" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="textLarge">
                        <span class="text textLarge">RO Number: <%= Me.ClaimNumber%></span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="100%">
            <div style="border:solid 1px">
                <table border="0" cellpadding="10" cellspacing="0" style="width:99%; height: 199px;">
                    <tr>
                        <td style="text-align: left" class="auto-style13">
                            <span class="textLarge textBold">To:</span>
                        </td>
                        <td style="width:67%; text-align: left" class="text">
                            <span class="textLarge textBold">From:</span><span class="textLarge"><%= Me.CurrentUserName%></span> <span class="textLarge textBold" style="padding-left:20px;">Ext:</span><span class="textLarge"><%= Me.CurrentUserExt%></span></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left" class="text">
                            <span class="textLarge textBold">Subject:</span><span class="textLarge textBold textUnderline">Re-inspection Assignment</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style13">
                            <span class="textLarge textBold">Date/Time: </span><span class="textLarge"><% Date.Now().ToLongDateString()%></span>
                        </td>
                        <td style="text-align: left" class="text">
                            <span class="textLarge textBold">Carrier: </span><span class="textLarge textBold textUnderline">Stillwater Insurance</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left" class="text">
                            <span class="textLarge textBold">Client Claim Number: </span><span class="textLarge textBold textUnderline"><%= Me.ClientClaimNumber%></span>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td width="100%">
            <div style="border-style: solid; border-color: inherit; border-width: 1px; width: 760px;">
                <table border="0" cellpadding="10" cellspacing="0" style="width:100%">
                    <tr>
                        <td colspan="2" style="text-align: left" class="auto-style12">
                            <span class="textLarge textBold">Driver: </span><span class="textLarge textBold textUnderline"><%= Me.ContactName%></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style9">
                            <span class="textLarge textBold">Primary Phone: </span><span class="textLarge"><%= Me.ContactWorkPhone%></span>
                        </td>
                        <td style="text-align: left" class="auto-style9">
                            <span class="textLarge textBold">Secondary Phone: </span><span class="textLarge"><%= Me.ContactHomePhone%></span>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td width="100%">
            <div style="border-style: solid; border-color: inherit; border-width: 1px; width: 759px;">
                <table border="0" cellpadding="10" cellspacing="0" style="width:100%; margin-bottom: 5px;">
                    <tr>
                        <td style="text-align: left" class="auto-style11">
                            <span class="textLarge textBold">Year/Make/Model: </span><span class="textLarge"><%= Me.VehicleYear%></span> <span class="textLarge"><%= Me.VehicleMake%></span> <span class="textLarge"><%= Me.VehicleModel()%></span>
                        </td>
                        <td style="text-align: left" class="auto-style11">
                            <span class="textLarge textBold">VIN: </span><span class="textLarge"><%= Me.VehicleVin%></span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left" class="auto-style10">
                            <span class="textLarge textBold">Vehicle Status:</span>
                            <% If Me.Helper.IsInShop Then%>
                                <span class="textLarge">Disabled</span>
                            <% Else%>
                                <span class="textLarge">Drivable</span>
                            <% End If%>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td width="100%">
            <div style="border-style: solid; border-color: inherit; border-width: 1px; width: 759px;">
                <table border="0" cellpadding="10" cellspacing="0" style="width:100%; height: 119px;">
                    <tr>
                        <td style="text-align: left" class="text">
                            <span class="textLarge textBold">Point Of Impact: </span><span class="textLarge"><%= New DamageArea(Me.Helper.Claim.AccidentDescription.PrimaryDamageAreaID).Name%></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left" class="text">
                            <span class="textLarge textBold">Vehicle Location: </span>
                                <%If Me.Helper.IsInShop Then%>
                                    <span class="textLarge textBold"">The vehicle is at our shop; address is included on estimate.</span>
                                <%Else%>
                                    <span class="textLarge textBold"">Call the Owner to verify where re-inspection can be performed.</span>
                                <%End If%>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>

<!--// PAGE 2 of 3 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%" class="auto-style5">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        CEI Insurance Services
                        4850 Street Road, Suite 210 <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">
                        Phone: 1-877-307-0460 <br />
                        Fax: 1-215-485-4663 <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                    <td align="left" style="width:33%" class="text">&nbsp;</td>
                    <td align="center" style="width:33%; text-align: center" class="textLarge">
                        <span class="text textUnderline textLarge textBold">Re-inspection Assignment Sheet</span><br />
                        <span class="text textUnderline textLarge textBold">Vehicle Status - <%= Me.VehicleStatus%></span>
                    </td>
                    <td align="right" style="width:33%; text-align: right;">
                        <img src="<%=Me.Helper.LetterWizardURL + "/Images/Logos/cei_insurance_logo.png"%>" style="width: 70px; height: 28px;" />
                    </td>
                </tr>

            </table>
        </td>
    </tr>
        <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                    <td align="center" style="width:33%; text-align: center" class="textLarge">
                        <span class="text textLarge textBold">THE FOLLOWING GUIDELINES <span class="textUnderline">MUST</span> BE ADHERED TO <span class="textUnderline">ENSURE PAYMENT</span></span><br />
                    </td>
                </tr>

            </table>
        </td>
    </tr>
    <tr>
        <td width="100%" class="textLarge" valign="top">
            <ul>
                <li><span class="textLarge textBold">Confirm vehicle location prior to inspection</span></li>
                <li><span class="textLarge">24 hour contact to schedule a Re-inspection</span></li>
                <li><span class="textLarge">Attempt to re-inspect while the vehicle is at the shop.  If repairs are completed, please contact the vehicle owner for a convenient time and location for a re-inpection.</span></li>
                <li><span class="textLarge">48 hour status to CEI (phone, fax, or E-mail)</span></li>
                <li><span class="textLarge"><span class="textBold">Fax</span> the completed Re-inspection report to <span class="textBold">215-485-4663</span> within 24 hours of inspection</span></li>
                <li><span class="textLarge textBold">Take necessary photos to confirm and/or document re-inspection</span></li>
                <li><span class="textLarge"><span class="textBold">Email photos</span> to: <span class="textBold textUnderline">dsimages@ceinetwork.com</span> within 24 hours of the inspection <span class="textBold">(please include the RO# in the subject line). Take additional photos to show any areas of concern, as documented in the report.</span></span></li>
                <li><span class="textLarge"><span class="textBold">If Repairs are Complete at the time of the inspection:</span> confirm repairs are completed according to the Estimate/Supplement, onbtain invoices to confirm parts replacement and comment regarding quality of repairs.</span></li>
                <li><span class="textLarge">Any additional costs <span class="textUnderline">including additional mileage charges must be approved by CEI prior to vehicle inspection. </span> Please call 877-307-0460 for an Authorization Number, to be included on the invoice.</span></li>
            </ul>

            <div style="text-align: center" class="textLarge textBold">
                Please complete the attached re-inspection report based upon the agreed price estimate.  Please confirm the vehicle location prior to inspection.
            </div>

        </td>
    </tr>

</table>

<!--// PAGE 3 of 3 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
        <!--// Header -->
    <tr>
        <td class="auto-style6">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        CEI Insurance Services
                        4850 Street Road, Suite 210 <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">
                        Phone: 1-877-307-0460 <br />
                        Fax: 1-215-485-4663 <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body -->
    <tr>
        <td class="auto-style6">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr>
                    <td align="center" colspan="3" class="textLarge">
                        <span class="text textLarge">RO Number: <%= Me.ClaimNumber%></span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td>
             <table border="1" cellpadding="3" cellspacing="0" style="width:100%; border:solid 1px">
                 <tr>
                     <td style="width:30%;text-align:left;vertical-align:top"><span class="textSmall">Name<br />Stillwater Insurance<br /><br />Claim Number<br />&nbsp;</span></td>
                     <td style="width:20%;text-align:left;vertical-align:top"><span class="textSmall">RO#</span></td>
                     <td style="width:30%;text-align:left;vertical-align:top"><span class="textSmall">Repair Facility</span></td>
                     <td style="width:20%;text-align:left;vertical-align:top">&nbsp;</td>
                 </tr>
                 <tr>
                     <td style="width:30%;text-align:left;vertical-align:top" colspan="2"><span class="textSmall">Vehicle Year/Make/Model<br />&nbsp;</span></td>
                     <td style="width:30%;text-align:left;vertical-align:top" colspan="2"><span class="textSmall">VIN<br />&nbsp;</span></td>
                 </tr>
                 <tr>
                     <td style="width:30%;text-align:left;vertical-align:top"><span class="textSmall">Vehicle Owner's Name/Phone<br />&nbsp;</span></td>
                     <td style="width:30%;text-align:left;vertical-align:top"><span class="textSmall">Original Estimate Amount<br />$</span></td>
                     <td style="width:30%;text-align:left;vertical-align:top" colspan="2"><span class="textSmall">Total Agreed-to-Price (supplements included)<br />$</span></td>
                 </tr>
                 <tr>
                     <td style="width:30%;text-align:left;vertical-align:top"><span class="textSmall">Status of repairs when inspected:<br /><br /> ____ Before <br /><br /> ____ During<br /><br /> ____ After<br /></span></td>
                     <td style="width:30%;text-align:left;vertical-align:top" colspan="3"><span class="textSmall">Re-inspection Performed By:<br />Appraiser:<br />Address:<br /><br />Phone:<br />Fax:</span></td>
                 </tr>
                 <tr>
                     <td style="text-align:left;vertical-align:top" colspan="4"><span class="textSmall">Location of inspection </span><span class="textSmall textBold">(if the vehicle complted, and not at the shop location, please contact driver to inspect vehicle).</span>
                         <span class="textSmall"><br />Shop Name:<br /> Address: <br /><br />Phone:<br />Fax:<br />Contact:<br />&nbsp;</span>
                 </tr>
            </table>
            <table border="1" cellpadding="2" cellspacing="0" style="width:100%; border:solid 1px">
                 <tr style="background-color:gray">
                     <td style="text-align:left;width:50%"><span class="textSmall textBold">Estimating Functions</span></td>
                     <td style="text-align:center;width:5%"><span class="textSmall textBold">Yes</span></td>
                     <td style="text-align:center;width:5%"><span class="textSmall textBold">No</span></td>
                     <td style="text-align:left;width:40%"><span class="textSmall textBold">Comments</span></td>
                 </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Appropriate choices of repair vs. replace</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Repair times accurate with size and area of damage</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td style="text-align:left"><span class="textSmall">LKQ and aftermarket parts specified as required</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Frame time consistent with impact area/amount of damage</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Labor and material rate in accordance with area standards</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">One, two, or three-stage paint finish correctly identified</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Betterments applied as needed</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Appearance allowance considered</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Estimate prepared within Client's specific guidelines</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr style="background-color:gray">
                     <td style="text-align:left;width:40%"><span class="textSmall textBold">Quality of Repair</span><span class="textSmall">(leave blank if inspected prior to repairs)</span></td>
                     <td style="text-align:center;width:10%"><span class="textSmall textBold">Yes</span></td>
                     <td style="text-align:center;width:10%"><span class="textSmall textBold">No</span></td>
                     <td style="text-align:left;width:40%"><span class="textSmall textBold">Comments</span></td>
                 </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Repairs performed in accordance with estimate</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Parts replaced correctly installed and aligned</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td style="text-align:left"><span class="textSmall">Paint match & quality is acceptable - no "spiders, orange peel" effects, or over-spray</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Panels repaired appropriately and acceptable with industry standards</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Gaps between panels are consistent with opposite panels</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align:left"><span class="textSmall">Supplemental or hidden damage justified with photos or invoices.</span></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table> 
        </td>
    </tr>
    <tr>
        <td width="100%">
             <table border="1" cellpadding="3" cellspacing="0" style="width:100%; border:solid 1px">
                <tr>
                    <td width="100%" colspan="4"><span class="text">Additional Comments/Details/Variance Amount:</span></td>
                </tr>
                <tr>
                    <td width="100%" colspan="4" style="border-bottom:1px solid black">&nbsp;</td>
                </tr>
                <tr>
                    <td width="100%" colspan="4" style="border-bottom:1px solid black">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="text">Re-Inspector Signature:</span></td>
                    <td style="border-bottom:1px solid black; width:45%"><span style="width:45%">&nbsp;</span></td>
                    <td style="width:15%"><span class="text">Re-Inspection Date:</span></td>
                    <td style="border-bottom:1px solid black; width:25%"><span style="width:25%">&nbsp;</span></td>
                </tr>
             </table>
        </td>
    </tr>
    
</table>

<script runat="server">
    
    Public Overrides ReadOnly Property NTAccount() As String
        Get
            Return ""
        End Get
    End Property
  
    Public Overrides ReadOnly Property Subject() As String
        Get
            Return ""
        End Get
    End Property

</script>