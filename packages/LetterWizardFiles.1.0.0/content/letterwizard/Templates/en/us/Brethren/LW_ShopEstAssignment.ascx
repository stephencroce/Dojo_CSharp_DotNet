<%@ Control Language="C#" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->


<style>

    .page { width: 203mm; height: 266mm; page-break-after: always; font-family: Arial }
    .page--last { width: 203mm; height: 266mm; font-family: Arial; }

    .textSmall { font-size: 8pt; }
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

</style>

<!--// PAGE 1 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>
                        <br /><!-- this is a hack.  See HACK ALERT! -->
                        4850 Street Road, Suite 200 <br />
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
                        <span class="text textUnderline textLarge textBold">Brethren Mutual INSURANCE</span><br />
                        <span class="text textUnderline textLarge textBold">Special Instructions</span>
                    </td>
                    <td align="right" style="width:33%; text-align: right;">
                        <img src="<%=this.Helper.LetterWizardURL + "/Images/Logos/cei_insurance_logo.png"%>" style="width: 70px; height: 28px;" />
                    </td>
                </tr>

            </table>
        </td>
    </tr>
    <tr>
        <td width="100%" class="text" valign="top">
            <ul>
                <li>CEI is managing the repair and will pay the claim on behalf of Brethren Mutual Insurance. <span class="text textBold">This is not a standard fleet claim.</span></li>
                <li>Brethren Mutual Insurance is CEI's customer.</li>
                <li><span class="text textBold">You must supply the owner/driver with a copy of the estimate.</span></li>
                <li>All questions related to the claim should be directed to CEI at <span class="text textUnderline">1-877-307-0460.</span></li>
                <li>Any unrelated or obvious previous damage should be written as a separate estimate and reported to CEI. Do not include unrelated or previous damage in the estimate for the reported damage.</li>
                <li>Any disputes with the customer should be reported to CEI.</li>
                <li><span class="text textBold">Please have the attached Direction of Payment (DOP) signed at the time of the estimate in order to ensure direct payment. Fax document to: <span class="textUnderline">215-485-4663.</span> This document is mandatory for payment.</span></li>
                <li>Payment will be processed after repair completion and receipt of completed Certification of Satisfaction/Release (at lower section of Repair Authorization, DOP & Release document).</li>
                <li>Unrelated Prior Damage is to be itemized on an Unrelated Prior Damage estimate and uploaded separately.</li>

            </ul>

            <div style="text-align: center" class="textLarge textBold textUnderline">
                Important
            </div>

            <div class="text textBold">
                <p>Photos:</p>

                <p>Four corner shots of the vehicle are <span class="textUnderline">MANDATORY for payment for this customer.</span> Include photos of the VIN, Plate, Odometer, and Interior."</p>

                <p>Clear Damage Photos are also mandatory.</p>

                <p><span class="textUnderline">Photos must show all damage written on the estimate!</span> If it’s on the estimate, provide a photo to document the damage.</p>
            </div>




        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 1 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<!--// PAGE 2 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200 <br />
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
            <div style="text-align: center" class="textLarge textBold">
                INSURANCE SERVICES ESTIMATE GUIDELINES <br />
                <span class="textUnderline">Account: Brethren Mutual Insurance</span>
            </div>
            <br />

            <table border="0" cellspacing="0" cellpadding="0" class="text" style="border:solid 1px black; width:100%">

                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">
                        Labor Rate:
                    </td>
                    <td style="border-bottom: solid 1px black; width:85%">
                        Prevailing
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Glass:
                    </td>
                    <td style="width:85%">
                        Sublet Cost Installed + 25% (includes kit)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">
                        Glass Kit:
                    </td>
                    <td style="border-bottom: solid 1px black; width:85%">
                        $12.00 for R&amp;I Operations Only
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%" valign="Top">
                        Parts:
                    </td>
                    <td style="width:85%">

                        <span class="textItalic">
                            ** Vehicles <span class="textUnderline">12</span> months old or less from the date of manufacture with less than <span class="textUnderline">12,000</span> miles must be written with all new OEM parts.<br />
                            <span class="textBold">** 2-3 years:</span> User new Original Equipment ir Aftermarket<br />
                            <span class="textBold">** 4+ years:</span> LKQ and Aftermarket parts are OK<br />
                            <br />
                            <span class="textBold">***No Aftermarket Sheet Metal Parts will be accepted without a signed release from the vehicle owner.</span><br />
                            <span class="textBold">***Free storage on all Total Loss vehicles/span><br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">
                        LKQ MarkUp:
                    </td>
                    <td style="border-bottom: solid 1px black; width:85%">
                        25%
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%" VAlign="Top">
                        Total Loss:
                    </td>
                    <td style="border-bottom: solid 1px black; width:85%">
                        50% B/L Total Loss: Complete Estimate and Photos, Note Open Items and TearDown Request. No Teardown without adjuster approval through CEI.<br />
                        70% = Threshold: Complete Estimate and Photos, Note Open Items.  CEI  to notify Adjuster of Total Loss Recommendation. No Teardown without Adjuster approval.<br />
                        <span class="text textBold">Complete the attached CCC "Basic Claim Information Form"</span>
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Unibody SetUp:
                    </td>
                    <td style=" width:85%">
                        2 Hours
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic;  width: 15%">
                        Bumper Instruction:
                    </td>
                    <td style="width:85%">
                        * See Parts Guidelines Above *
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        AntiFreeze:
                    </td>
                    <td style="width:85%">
                        $20.00 per Gallon
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        GlassKit:
                    </td>
                    <td style="width:85%">
                        $20.00 for R &amp; I Operations Only
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Freon:
                    </td>
                    <td style="width:85%">
                        $30.00 plus Booktime R/134 R/12: Prevailing
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Rust Protection:
                    </td>
                    <td style="width:85%">
                        $9.00 1st panel; $4.00 all others (No Labor)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Stone Guard:
                    </td>
                    <td style="width:85%">
                        Including Labor: 0.5 Hr 1st Panel: 0.3 all others
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Flex Additive:
                    </td>
                    <td style="width:85%">
                        Full Bumper: $12.00 (No Labor): $6.00 Minor Parts
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Cover Car for Overspray:
                    </td>
                    <td style="width:85%">
                        $5.00 + 0.3 Hr Body Labor
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Haz Waste Removal:
                    </td>
                    <td style="width:85%">
                        $3.00 (Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Tint &amp; Blend:
                    </td>
                    <td style="width:85%">
                        1/2 Base Refinish Time: inc C/C (2 Panel Max - could vary depending on severity)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Tape Stripe:
                    </td>
                    <td style="width:85%">
                        0.3 Hour - 1st Panel: 0.1 all others ($10.00 Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">
                        Paint Stripe:
                    </td>
                    <td style="width:85%">
                        1.0 Hour - 1st Panel: 0.5 all others (2.5 Max &amp; can vary based on year/make/model)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%" VAlign="Top">
                        Betterment Guidelines:
                    </td>
                    <td style="width:85%">
                        See Industry Standard Guidelines
                    </td>
                </tr>

            </table>
        </td>

    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 2 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<!--// PAGE 3 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200 <br />
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
        <td width="100%" valign="top">

            <!--// Text Header //-->
            <div style="margin-top:20px; text-align:center; text-decoration:underline" class="TextTitle">Claim Assignment</div>
            <div style="margin-top:10px;" class="TextNormal">
            This is a confirmation that CEI has assigned one of our customers to receive an estimate only at <b><%=this.VendorName%></b>; this is not a repair authorization.  The information on the Claim is as follows:
            </div>
      
            <!--// Client/Customer Information //-->
            <div style="margin-top:10px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align:top;">Client Information</td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Client:</td>
                        <td class="TextNormal CellValue"><%=this.ClientName%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Location:</td>
                        <td class="TextNormal CellValue"><%=this.ClientBranch%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Claim #:</td>
                        <td class="TextNormal CellValue"><%=this.ClientClaimNumber%></td>
                    </tr>
                    </table>
                </td>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align:top;">Customer Information</td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Name:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerName%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Address:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerAddress%></td>
                    </tr>
                    <% if (this.CustomerHPhone.Length > 0) {%>
                    <tr>
                        <td class="TextNormal CellLabel">Home Phone #:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerHPhone%></td>
                    </tr>
                    <%} if (this.CustomerHMPhone.Length>0) {%>
                    <tr>
                        <td class="TextNormal CellLabel">Mobile Phone #:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerHMPhone%></td>
                    </tr>
                    <%} if (this.CustomerWPhone.Length > 0) {%>
                    <tr>
                        <td class="TextNormal CellLabel">Work Phone #:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerWPhone%></td>
                    </tr>
                    <%} if (this.CustomerWMPhone.Length > 0) {%>
                    <tr>
                        <td class="TextNormal CellLabel">Work Mobile Phone #:</td>
                        <td class="TextNormal CellValue"><%=this.CustomerWMPhone%></td>
                    </tr>
                    <%}%>
                    </table>
                </td>
                </tr>
            </table>
            </div>
      
            <!--// Vehicle Information //-->
            <div style="margin-top:10px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                <td class="TextLargeNormal CellTitle" colspan="2"><b>Vehicle Information</b> (please verify all information at time of inspection.)</td>
                </tr>
                <tr>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextNormal CellLabel">Year:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleYear%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Make:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleMake%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Model:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleModel%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Style:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleStyle%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Color:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleColor%></td>
                    </tr>
                    </table>
                </td>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextNormal CellLabel">VIN:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleVin%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Plate:</td>
                        <td class="TextNormal CellValue"><%=this.VehiclePlate%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Mileage:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleMileage%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Deductible:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleDeductible%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Unit #:</td>
                        <td class="TextNormal CellValue"><%=this.VehicleUnitNumber%></td>
                    </tr>
                    </table>
                </td>
                </tr>
            </table>
            </div>
      
            <!--// Damage Information //-->
            <div style="margin-top:10px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                <td class="TextLargeNormal CellTitle" colspan="2"><b>Damage Information</b></td>
                </tr>
                <tr>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextNormal CellLabel">Primary Damage:</td>
                        <td class="TextNormal CellValue"><%=this.DamagePrimary%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Additional Damage:</td>
                        <td class="TextNormal CellValue"><%=this.DamageAdditional%></td>
                    </tr>
                    </table>
                </td>
                <td style="vertical-align:top;width:50%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <td class="TextNormal CellLabel">Location:</td>
                        <td class="TextNormal CellValue"><%=this.DamageLocation%></td>
                    </tr>
                    <tr>
                        <td class="TextNormal CellLabel">Damage Area:</td>
                        <td class="TextNormal CellValue"><%=this.DamageDamageArea%></td>
                    </tr>
                    </table>
                </td>
                </tr>
            </table>
            </div>

            <!--// Important Information //-->
            <div style="margin-top:30px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                <td class="TextLargeNormal CellTitle"><b>Important Instructions</b> (in order to expedite repair approval/payment.)</td>
                </tr>
                <tr>
                <td class="TextNormal">
                    <ol>
                    <li>If you are unable to handle this assignment, please call CEI at <span style="white-space:nowrap;">1-877-307-0460</span> immediately.</li>
                    <li>If there are any problems with towing, please contact CEI at <span style="white-space:nowrap;">1-877-307-0460</span>.</li>
                    <li>CEI Must be contacted with the estimate within 12 hours from the time the Customer or vehicle arrives at the shop.</li>
                    <li>Please complete estimate and photos in Pathways or CCCOne and lock the estimate.  When estimate is locked, CCC will send the estimate to CEI.  If you do not use CCCOne or Pathways for your estimating software, please enter the estimate and photos using the CCC Portal.</li>
                    <li>This is not a repair approval. Authorizations and Purchase Orders will originate from CEI only.</li>
                    <li>Upon inspection of a drivable vehicle, if you feel vehicle is unsafe, please contact CEI immediately.</li>
                    <li>Please have the attached Direction of Payment (DOP) signed at the time of the estimate in order to ensure direct payment. Fax document to: <span style="white-space:nowrap;">215-485-4663</span></li>
                    <li>Payment will be processed after repair completion and receipt of completed Certification of Satisfaction / Release (at lower section of Repair Authorization, DOP &amp; Release document).</li>
                    </ol>
                </td>          
                </tr>
            </table>
            </div>
      
            <!--// Decals / Paintless Dent Removal (PDR) Information //-->
            <div style="margin-top:30px;">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr>
                <td class="TextLargeNormal CellTitle"><b>Decals / Paintless Dent Removal (PDR)</b></td>
                </tr>
                <tr>
                <td class="TextNormal">
                    <ol>
                    <li>When decals require replacement, submit R+I time, indicate which panel, specific wording, color of decals, and confirm all information is on the estimate.</li>
                    <li>PDR - PDR can be utilized whenever this process represents the most efficient and cost effective method.</li>
                    <li>Fill out the Decal request form and fax it back to 215-485-4652</li>
                    </ol>
                    The Driver has agreed to come in for an estimate on or by <b><%=this.VendorAppointmentDate%></b>.
                    If the Customer does not come in by this date please call CEI at <span style="white-space:nowrap;">1-877-307-0460</span>, so that we may inform our client.
                    If there are any problems with towing, please contact CEI.
                </td>          
                </tr>
            </table>
            </div>

        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 3 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<!--// PAGE 4 of 7 -->

<!--// PAGE 5 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200 <br />
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
            <div style="width:100%">
                <img src="<%=this.Helper.LetterWizardURL + "/Images/CCC-ServicesPart1.png"%>" width="750px"  />
            </div>
        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 5 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<!--// PAGE 6 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page--last">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200 <br />
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
        <td width="100%" >
            <div style="width:100%">
                <img src="<%=this.Helper.LetterWizardURL + "/Images/CCC-ServicesPart2.png"%>" width="750px" />
            </div>
        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 6 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>


<!--// PAGE 7 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page--last">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200 <br />
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
            <div class="text textLarge textBold" style="text-align: center">
                Repair Authorization, Direction of Pay &amp; Release<br />
                CEI Accident Services<br />
                Please return this authorization via fax: <span class="textUnderline">(215) 485-4663</span><br />
                CEI Claim #: <%=this.ClientClaimNumber %>

            </div>
            <br />
            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="text textSmall">
                <tr>
                    <td style="width:20%" valign="top">Customer Name:</td>
                    <td style="width:30%" valign="top"><%=this.ClientName %></td>
                    <td style="width:20%" valign="top">Shop Name:</td>
                    <td style="width:30%" valign="top"><%=this.VendorName %></td>
                </tr>
                <tr>
                    <td style="width:20%" valign="top">Customer Claim #:</td>
                    <td style="width:30%" valign="top"><%=this.ClientClaimNumber %></td>
                    <td style="width:20%" valign="top">Shop Contact:</td>
                    <td style="width:30%" valign="top"><%=this.VendorContactName %></td>
                </tr>
                <tr>
                    <td style="width:20%" valign="top">Veh. Owner:</td>
                    <td style="width:30%" valign="top"><%=this.VehicleOwnerName %></td>
                    <td style="width:20%" valign="top">Shop Phone:</td>
                    <td style="width:30%" valign="top"><%=this.VendorPhone %></td>
                </tr>
                <tr>
                    <td style="width:20%" valign="top">Owner Phone:</td>
                    <td style="width:30%" valign="top"><%=this.VehicleOwnerPhone %></td>
                    <td style="width:20%" valign="top">Vehicle:</td>
                    <td style="width:30%" valign="top"><%=this.VehicleYear %> <%=this.VehicleMake %> <%=this.VehicleModel %></td>
                </tr>
                <tr>
                    <td style="width:20%" valign="top">Deductible:</td>
                    <td style="width:30%" valign="top"><%=this.VehicleDeductible %></td>
                    <td style="width:20%" valign="top">P.O.I.</td>
                    <td style="width:30%" valign="top"><%=this.DamagePrimary %></td>
                </tr>
                <tr>
                    <td style="width:20%" valign="top">Date of Loss:</td>
                    <td style="width:30%" valign="top"><%=this.Helper.DateOfLoss %></td>
                    <td style="width:20%" valign="top">VIN#:</td>
                    <td style="width:30%" valign="top"><%=this.Helper.VehicleVin %></td>
                </tr>

            </table>
            <br />
            <div style="width:100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">
                    ***Acknowledgement of vehicle owner rights to choose (Connecticut Claims Only)***
                </span><br />
                <p>In accordance with Connecticut Senate House Bill 5152, effective 01/09/2009, this written acknowledgement is required prior to having
                    your vehicle repaired by a repair facility participating in our network:
                </p>
                <p class="text textItalic" style="padding-left: 10px; padding-right: 10px">&quot;I am aware of my right to choose the licensed repair shop where the damage to the motor vehicle will be repaired.&quot;</p>
                <br />
                <table border="0" cellspacing="0" cellpadding="0" width="100%" class="textSmall">
                    <tr>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Vehicle Owner's Signature</td>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Date</td>
                    </tr>
                </table>

            </div>
            <br />
            <div style="width:100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">
                    ***Authorization to repair***
                </span><br />
                <p>I am the owner of this vehicle and authorize the above named auto repair facility to make the necessary repairs in 
                    accordance with the written appraisal provided. I authorize the above named shop to deliver the vehicle to a mechanical shop, 
                    alignment shop or any other facility required to complete the repairs and road test the vehicle. I agree the above named shop 
                    shall not be responsible for mechanical failures or other damages unrelated to the repair work performed.
                </p>
                
                <br />
                <table border="0" cellspacing="0" cellpadding="0" width="100%" class="textSmall">
                    <tr>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Vehicle Owner's Signature</td>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Date</td>
                    </tr>
                </table>

            </div>
            <br />
            <div style="width:100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">
                    ***Direction of Pay***
                </span><br />
                <p>I authorize Brethren Mutual / <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%> to make payment on my behalf to the above mention auto repair shop for the portion 
                    of the repairs in which they are responsible for.
                </p>
                
                <br />
                <table border="0" cellspacing="0" cellpadding="0" width="100%" class="textSmall">
                    <tr>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Vehicle Owner's Signature</td>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Date</td>
                    </tr>
                </table>

            </div>
            <br />
            <div style="width:100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">
                    ***Certificate of Satisfaction / Release***
                </span><br />
                <p>I certified that I am the owner of the vehicle identified at the top of this form and that I have inspected the 
                    repairs made to my vehicle by the above listed auto repair facility. I certify that the damages as listed on the 
                    approved appraisal/estimate have been completed to my satisfaction by the above mentioned auto repair facility.
                </p>
                
                <br />
                <table border="0" cellspacing="0" cellpadding="0" width="100%" class="textSmall">
                    <tr>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Vehicle Owner's Signature</td>
                        <td style="border-top: solid 1px black; padding-left: 5px; padding-right: 5px; width: 50%;">Date</td>
                    </tr>
                </table>

            </div>
        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width:50%; border-top: solid 1px black;" class="textSmall">
                        Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />
                        
                    </td>
                    <td align="right" style="width:50%; text-align: right; border-top: solid 1px black;" class="textSmall">
                        Page 7 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<script runat="server">
    
  public override string NTAccount {
    get {
      return "";
    }
  }
  
  public override string Subject {
    get {
      return "Brethren Mutual Claim Assignment - Claim Id: {0}";
    }
  }

  private string FormatPhone(string Phone) {
    switch (Phone.Length) {
      case 11:
        return string.Format("{0} ({1}) {2}-{3}", Phone.Substring(0, 1), Phone.Substring(1, 3), Phone.Substring(4, 3), Phone.Substring(7));
      case 10:
        return string.Format("({0}) {1}-{2}", Phone.Substring(0, 3), Phone.Substring(3, 3), Phone.Substring(6));
      case 7:
        return string.Format("{0}-{1}", Phone.Substring(0, 3), Phone.Substring(3));
    }
    return Phone;
  }

  private CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee ClaimEmployee {
    get {
      if (Session["ClaimEmployee"] is Nullable) {
        Session["ClaimEmployee"] = new CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee(this.Helper.Claim);
      }
      return (CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee)Session["ClaimEmployee"];
    }
  }


 
  private string ClientName { get { try { return this.Helper.Client.DisplayName; } catch { return string.Empty; } } }
  private string ClientBranch { get { try { return this.Helper.Claim.OrgUnit.DisplayName; } catch { return string.Empty; } } }
  private string ClientFinancialId { get { try { return this.Helper.Claim.ClaimID.ToString() + this.Helper.Vendor.FinancialID; } catch { return string.Empty; } } }
  
  private string ClaimId { get { try{return this.Helper.Claim.ClaimID.ToString();}catch{return string.Empty;} } }
  private string CustomerName { get { try {return this.Helper.ContactName; } catch { return string.Empty; } } }
  private string CustomerAddress { get { try { return this.Helper.ContactAddress; } catch { return string.Empty; } } }
  private string CustomerHPhone { get { try {return this.Helper.ContactHomePhone; } catch { return string.Empty; } } }
  private string CustomerHMPhone { get { try { return this.Helper.ContactMobileHomePhone ; } catch { return string.Empty; } } }
  private string CustomerWPhone { get { try { return this.Helper.ContactWorkPhone; } catch { return string.Empty; } } }
  private string CustomerWMPhone { get { try { return this.Helper.ContactMobileWorkPhone; } catch { return string.Empty; } } }

  private string VehicleYear { get { try{return this.Helper.VehicleYear;  }catch{return string.Empty;} } }
  private string VehicleMake { get { try{return this.Helper.VehicleMake;}catch{return string.Empty;} } }
  private string VehicleModel { get { try{return this.Helper.VehicleModel; }catch{return string.Empty;} } }
  private string VehicleStyle { get {try{return this.Helper.VehicleStyle;}catch{return string.Empty;}}}
  
  private string VehicleColor { get {try{return this.Helper.VehicleColor;}catch{return string.Empty;}}}
  
  private string VehicleVIN { get { try{return this.Helper.VehicleVin ; }catch{return string.Empty;} } }
  private string VehiclePlate { get { try{return this.Helper.VehiclePlate ;}catch{return string.Empty;} } }
  private string VehicleMileage { get { try{return this.Helper.VehicleMileage;}catch{return string.Empty;} } }
  private string VehicleDeductible { get { try{return this.Helper.VehicleDeductible; }catch{return string.Empty;} } }

  private string DamagePrimary {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.PrimaryDamageAreaID);
        return DA.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageAdditional {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.AdditionalDamageAreaID);
        return DA.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageLocation {
    get {
      try {
        CEI.Application.Intelliclaim.UserService.BusinessObject.AccidentLocation AL = new AccidentLocation(this.Helper.Claim.AccidentDescription.AccidentLocationID);
        return AL.Name;
      } catch { return string.Empty; }
    }
  }
  private string DamageDamageArea { get { try{  return this.Helper.Claim.AccidentDescription.DamageArea;   }catch{return string.Empty;} } }

  private string VendorAppointmentDate { get { try { return this.Helper.ShopEstimateAssignment.Assignment_DT.DisplayDate; } catch { return string.Empty; } } }
  
  private string VendorName { get { try{return this.Helper.Vendor.DisplayName; }catch{return string.Empty;} } }
  private string VendorAddress { get { try{return this.Helper.Vendor.Details.Address.TransformAddress(ContactComponetUtilities.FormatOptions.HTML); }catch{return string.Empty;} } }
  private string VendorPhone { get { try{    return this.FormatPhone(this.Helper.Vendor.Details.Phone2);}catch{return string.Empty;} } }


  private string VendorContactName {
      get {
           VendorContact contact = null;
            if (this.Helper.Vendor !=null && this.Helper.Vendor.Contacts.Count > 0) {
                
                foreach (VendorContact c in this.Helper.Vendor.Contacts) {
                    if (c.ContactTypeID == 11) {
                        contact = c;
                        break;
                    }
                }
                if (contact == null) contact = (VendorContact)this.Helper.Vendor.Contacts.Items[0];
                
            }

          string returnValue = string.Empty;
          if (contact != null) returnValue = contact.FirstName + " " + contact.LastName;
          return returnValue;
                
      }
  }
  private string VehicleOwnerPhone {

      get {
          string returnValue = string.Empty;
          if (this.Helper.ClaimV2.Vehicle.Driver != null) {
              var driver = this.Helper.ClaimV2.Vehicle.Driver;
              string phone = driver.PhoneHome;
              if (string.IsNullOrEmpty(phone)) phone = driver.CellPhoneHome;
              if (string.IsNullOrEmpty(phone)) phone = driver.CellPhoneWork;
              if (string.IsNullOrEmpty(phone)) phone = driver.PhoneWork;

              if (!string.IsNullOrEmpty(phone)) {
                  returnValue = this.FormatPhone(phone);
              }
          }
          return returnValue;          
      }
          
  }
  
  private string VehicleOwnerName {
      get {
          
          string returnValue = string.Empty;
          if (this.Helper.ClaimV2.Vehicle.Driver != null) {
              var driver = this.Helper.ClaimV2.Vehicle.Driver;
              returnValue = driver.FirstName + " " + driver.LastName;
          }
          return returnValue;
      }
  }
  //BEGIN - HACK ALERT!: This control inherits from a VB base class, yet it's control language in the page directive is marked C# (WTF!?!?)  
  //Therefore, methods in the VB base class were duplicated here and marked private.   
  private int getOrgCountryId()
  {

      var _OrgUnitProfile = new CEI.Application.Shared.Core.BusinessObject.OrgUnitProfile();
      int nResult = 1;  //Default to US.      
      var ds = CEI.Application.Shared.Core.Container.Resolve<CEI.Application.Shared.Core.BusinessObject.Service.IOrgUnitDAL>().GetOrgUnitProfile(this.Helper.Claim.OrgStructureID);

      System.Data.DataTable DT = ds.Tables[0];
      if (DT.Rows.Count > 0)
      {
          try
          {
              nResult = int.Parse(DT.Rows[0].ToString());
          }
          catch (Exception ex)
          {
              nResult = 1;
          }

      }

      return nResult;
  }
  private string getProperCEIName(int CountryId, string AlternateName = "CEI")
  {
      string returnVal = String.Empty;
      switch (CountryId)
      {
          case 2:
              returnVal = "CEI Network Canada, Inc.";
              break;
          default:
              if (AlternateName != String.Empty)
              {
                  returnVal = AlternateName;
              }
              else
              {
                  returnVal = "CEI";
              }
              break;
      }
      return returnVal;  }
  //END HACK ALERT!
  
</script>