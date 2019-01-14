<%@ Control Language="C#" AutoEventWireup="false" Inherits="CEI.Application.Intelliclaim.UserService.LW.Letter" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="LW" Namespace="CEI.Application.Intelliclaim.UserService.LW.Controls" Assembly="CEI.Application.Intelliclaim.UserService.LW" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService" %>
<%@ Import Namespace="CEI.Application.Common.Framework.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.UserService.BusinessObject" %>
<%@ Import Namespace="CEI.Application.Intelliclaim.BusinessService.Workflow" %>

<!-- #include virtual="~/LetterWizard/Scripts/Style.asp" -->


<style>
    .page {
        width: 203mm;
        height: 266mm;
        page-break-after: always;
        font-family: Arial;
    }

    .page--last {
        width: 203mm;
        height: 266mm;
        font-family: Arial;
    }

    .textSmall {
        font-size: 8pt;
    }

    .text {
        font-size: 10pt;
    }

    .textLarge {
        font-size: 12pt;
    }

    .textBold {
        font-weight: bold;
    }

    .textUnderline {
        text-decoration: underline;
    }

    .textItalic {
        font-style: italic;
    }

    ul.SpecialInstructions li {
        margin-top: 10px;
    }

    .SquareTextBox {
        height: 25px;
    }

    .Square {
        margin-right: 3px;
    }
</style>

<!-- #include virtual="~/LetterWizard/Scripts/FormStyle.asp" -->

<!--// PAGE 1 of 7 -->
<table border="0" cellpadding="0" cellspacing="0" class="page">
    <!--// Header -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>
                        <br />
                        <!-- this is a hack.  See HACK ALERT! -->
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td align="left" style="width: 33%" class="text">&nbsp;</td>
                    <td align="center" style="width: 33%; text-align: center" class="textLarge">
                        <span class="text textUnderline textLarge textBold">CHUBB INSURANCE</span><br />
                        <span class="text textUnderline textLarge textBold">Special Instructions</span>
                    </td>
                    <td align="right" style="width: 33%; text-align: right;">                        
                        <img width="70" height="28" title="" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAAAcCAYAAADcO8kVAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3wocEhMvql//CQAACypJREFUWMPNmWt0VNUVx3/nzp1JJslkkknIY5JcAoTHQjIoj0hZKgwBlKIuqtZXeQhL7FKxtRYtL5e0FanWltq61OJjiaIoFKSgIkIyQagPxAoDqREklJuQQAIhMZPnzL23H5jByZBMJtEP3WvdmXXOPWffc/73v/fZe19BH+TYN9UMLci92N61uzRbkqQ8WTbnCcFAn8+nnK2vt3R0dmiBgNbc0uKr9/v9X8XFxR25+uprTo0fN8bg/1R25RXaZCGS3ar3lEdxIaINfuutjdx++60AvL9jZ5zZbE4Dpgkh5gshJgUCATRNa6ys/Obzf+3718YNG958H6jpbREbckZwx6mKi22P4hKACdDdqlcP68eteqPq2pE7ihnVR8J1yX3V80L20AXDzdaXg81St+ot7hGYQ97DjHYVsm7d68nOnJzXJEm6ARAgRFtba8vWrVsWlZaUbho8ZEjr7l0fxsyEN5wj+FlNBWuzh8oFZusyAfOBPCCkowHYCDzuVr1netrUYkcuTzdUA7BbKbzThPg14Aobch54E/i9W/WeiwJO3gd5oyrjhCSH9V17CTBPrP4Dy5Yu4Z2t26Y7HI51QJZhlhGazumams+OHq1Y+OiKFUfCNtIneSVr2Kh8S/xmAcNiGF4DPOJWvW90t7GdeYVbzELMEBDfi56vgRvdqvdoN3p+uiuv8G1ZiHAsFl1sjL78cg4dPMiS3yzNnDBx4vP19fXvLLx7wf4is7Xw/lTn3zbXqTdvw/9xf8BIl82cDfjZnDNyjcMkP9gPFTuAG4GAW/XyWNrAkRMTksssQgzoo56H3ar36Qhwcl/JHnZoqMXq0AwDA3SBiBMAiqKgqipPPvXHIpdr9KurVj52+b5PP+mca88YcZc966tWXRtzfXX5l9/Hub3hHP5Bjhx3bTjNBKADPl3r9BtGQBbCbJNMZhMC/VJCzner3ldn2zNGzknOLLeIrmQXQIuuaR2G0SEEZrskm01B/RGy0K16Xwprm3LluPnz7JkzhlnixZmAf8WEhORKGUBVVW666eZRY8aM3b19+/aUBff8XN/36SeWEZaE7X7DeOH7gvJY+sCXI0ExIHCis/3dBaePLgOOB/eQAUxalOq874aktAkWIUJ2fyYArwHST5LS90aC0qxrx//eWPvAe76GPUAHkA7MWJmu/OqahBRXhL940aO4vnCr3tCeHM9nFbxol+RtOkZlrhxXrhmGVQBMnTZ9wJIlS2uBrKnF7rMAC1OybrojOeMtA7KKVW9Df0EZHZdUuCZz8CHBdyegBo0lLeeV1eeqmnuYJslCFC9PU9Zek2CXE5Dyf6Qe1P6UMfidcfFJs8JZcCrQOXV2TUVJD3pMTtnyyGvZw1eZuvqQL9yqd1zI0rflXlZtk0xxYfetEkDR+KJXhBD7QqAAaIZxhwBZgvMexdVfXMRce8amcFCAuvJ2X2YUUAD0gGHs+u3Zk1ee1TryJ1x1mwbYh1usM8JB8RvGtbNrKkpWDxjUkx6tJtC5+p7Tx1bIXVk21qO4xkZbuAQUTCkuvh64P/yGRZJyg6ab0Vss0ZOMikscUWS1DY/onldoTeqMUUXdbae+1sSbSxkTn/TLiLd6YHrV4Q8BltafiKqk0t/+xNrG2k8iTGpxtDnyvHl3TZNlmcmTri4vKS2jeMrkC8GEFgiZzwrggf4AM9RinaobXZzoSbfq/aAfqqSbbem3RLhjxaO4KmOiLRhNupYaMT+qGchJSbYrdF3vAC6CAlAf8B8w4DoDfl6muB42oL2vzLEgrow4Fd7op0mahlusOREby4h1sgEkS6bI7szopiSMNMMwzAAlpWXfhdatjb/f4Wtw7mxpcEoI+mNOVklyRnT9t5/ASImSnPADp0dR9UmapuuAVFJaNiScMYA4pwU+nJHoqNcw2jyKa0hfnXC7bmh9WUw00eiqS8MgYPT/0gzDGtWUWny+ekmS0HV9MXBvuNPf4ju7ao494+1g+yNgoEdxBWJlT4PurxZdc4dJwDP9wEWvDXSeH2qOTzSCJ8KGprpbX246s7+PejoAS1DFt8bSnYjV13bPGLWqqtxkMgHcXVJaZgo3p0YtsPXZ8zVlQW/uBPa4VS+xMqdRD+yXuibwP/EoLtGP41/b19p0XIT5jNn2zFuAk7FeKZJcW6K4VnsUV5JHcanA+Z5AAZD2lHn2BwIBABnIjTCnzs3NZ++t0/yhmGOiR3F9HCs4+9uad7cZemRUvi5Wxp0qmHCRMeuaznwQYZczQyWFWOQO+4A1EtwFlAPHgqWOqHFMxXvvbj8ebO/tZkzFnTUVv2sz9NC6fuRRXJ/FCE7lqnMnSyP65ngU14OxbOqv56uHlimug6HEvDbQ2RR2O9GjuA7Hso4HUp3TbrUNuC+sawjweG/ANO/Y8f4/ghFzXklp2VWRgwKG8fST56rXy0IQvIr2DRx9WIKU3kzg0zbfMp+utUf0r/EormfCmVOqFHYZ8G7uZcunJTqOGjDao7iqgbpV59T1pq6mOcqjuD4BBoUXpcJlU87IxbOS0j+MeH6tW/Uu7yX2ASB/yzv//Mput8cDvuIpk23hwV5QbMC4sIRVW5mufLbyrOqP4dh+fFvOZcsiah4heQ7YCTQDqbphXCeEWNjNwCfdqnf1krS8vT9OdBRql2bfH3Eh0TwBmPQLa11iguTIkTqMkxH/nqQeMnrKlULPF/n5+a+//MqrPwu2ny2eMrnbaLco3mZakzk4udPoEtLqbtX7bbQS4jCz9YXnsgvuMSFEXz2vAVqbod0ys6p8KzDuqYxBm4vibUo/KmVGq6FPmll1JNxl9JxEAoaqqksaGhp8oQpWSWnZrPAT6qJDbW8esK6prkxcKB2GriaP4no2mr0f9bfdO6v6P7+uCXT6YkVGAH70hv3tzVkzq8q3/jlzMMCBR+pOTF3bePqAidgx1jC0k/6O3JlVR/ZuzhkZ07MvSkpKylOb/rHlYUmSADoBR/GUyS3dzBt4f6pz2222Aa4ISh8EityqN5p5FcxMcjx0XaLj9iviE1MNwDAuHMEXj2NhUO3vLD+v+ZcuOnN8O8BceyavNZ0J15M4Pt42e2piyuJpiakFFiHQje9iJhH8qQt01tdp/kfuO/3N64A2KcHOntamLgXG7WGMMSJMKSTxy5c/+tm06dNdmqYBNBRPmZzWwwYH/sKRs/EWW3qRZlxC6tvdqvftXqrzqRKMnWPPHJsrx2XFS8IMorFRC3z9p4ZqD1AdIxlk4IpZtvQrh1us+UmSFG9CtLbo2n93tjTuPdDefLiX+SmPD8hfmyhdSKYsQtKmJ6Te2R0Xp61f/+aWbKczKdg+DgwFjAhnDOCYa898+y575tRuFG0D5vTme/oiHsUV71a97T9kwlQ+aKzlshNfdCmDLEp1dm+k2U7n0g0bNj6haYFQ1+fFUyYX9fTGrohPfOkvGQXz9O4/HFwPvO9Wvcb3BcijuIYBy4B1QKjQ5AOygYqgJYwF/gjcBxwFkoD1wG+AWuAYcDXgBUYE7y0EvgnqmuBWvQ9L3S2gtqbmyZWPPbrJYrFgMpkwmUzj93y0r6e8JPBle8uC2bUVD/l0TQuLdULXu7IQVR8PvDzzB2BNKvAiMAZoAq4ECoH3wl7CNuCq4Lep3OB/O1AJTAT2A18Ec6b9QD6wFnAApcCuS5xvhCTPmTP3GrPFfMEbWa3GvHnz9xaNH/ttlDmDHCY5LkUym2ySJCdIJnOCkMxWSZJn2dLO3F177Oj3NKVQApgczNR9wbiqFUgDWoIgSIACnArWbU4Cg4OMSQyCqrtVb2fwy+Xw4FgbkOhWvRX/Ay0bnOGaaNnSAAAAAElFTkSuQmCC" />
                    </td>
                </tr>

            </table>
        </td>
    </tr>
    <tr>
        <td width="100%" class="text" valign="top">
            <ul>
                <li>CEI is managing the repair and will pay the claim on behalf of Chubb Insurance. <span class="text textBold">This is not a standard fleet claim.</span></li>
                <li>Chubb Insurance is CEI's customer.</li>
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 1 of 7
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
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
                INSURANCE SERVICES ESTIMATE GUIDELINES
                <br />
                <span class="textUnderline">Account: Chubb Insurance</span>
            </div>
            <br />

            <table border="0" cellspacing="0" cellpadding="0" class="text" style="border: solid 1px black; width: 100%">

                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">Labor Rate:
                    </td>
                    <td style="border-bottom: solid 1px black; width: 85%">Prevailing
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Glass:
                    </td>
                    <td style="width: 85%">Local Glass Pricing + 25% (includes kit)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">Glass Kit:
                    </td>
                    <td style="border-bottom: solid 1px black; width: 85%">$12.00 for R&amp;I Operations Only
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%" valign="Top">Parts:
                    </td>
                    <td style="width: 85%">
                        <span class="textUnderline">First Party Personal Lines: </span>
                        <br />
                        <span class="text textItalic">** All New OEM Parts Only</span><br />
                        <span class="textUnderline">First Party Commercial and 3rd Party Claimants</span><br />
                        <span class="textItalic">** Vehicles <span class="textUnderline">12</span> months old or less from the date of manufacture with less than <span class="textUnderline">15,000</span> miles must be written with new OEM parts.<br />
                            ** Vehicles over <span class="textUnderline">12</span> months old or with mileage in excess of <span class="textUnderline">15,000</span> miles can and should be written utilizing bold on OEM/LKQ and factory 
                            reconditioned parts. LKQ can not be utilized for repairs that are considered a safety item (i.e. steering, suspension, tires, wheels or related parts, etc) **Repairing/Reconditioning of the original cosmetically
                            damaged wheel is acceptable **
                            <br />
                            ** Vehicles in excess of <span class="textUnderline">36</span> months old from date of manufacture can and should be written utilizing Certified Quality Replacement Aftermarket &amp; factory reconditioned parts.
                            <span class="textBold">(Effective 2/23/2010, Chubb suspended the use of "Structural" Aftermarket Parts (i.e. bumper bars, reinforcements, absorbers, bumber mounting brackets and radiator supports) on any estimate
                                or appraisal prepared on our behalf)
                            </span>
                            <br />
                            ** Large Commercial Tractors (i.e. International, Mack, etc) can and should be written utilizing Quality Replacement Aftermarket &amp; factory reconditioned parts.
                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%">LKQ MarkUp:
                    </td>
                    <td style="border-bottom: solid 1px black; width: 85%">25%
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%" valign="Top">Photos:
                    </td>
                    <td style="border-bottom: solid 1px black; width: 85%">
                        <span class="text textBold">** Photos of all four (4) corners are required on every vehicle.
                            <br />
                            ** No supplements will be approved until we receive the necessary photos

                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; border-bottom: solid 1px black; width: 15%" valign="Top">Total Loss:
                    </td>
                    <td style="border-bottom: solid 1px black; width: 85%">70% = Total Loss: Complete Estimate and Photos, Note Open Items.  CEI  to notify Adjuster of Total Loss Recommendation. No Teardown without CEI's approval.<br />
                        <span class="text textBold">Complete the attached CCC "Basic Claim Information Form"</span>
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Unibody SetUp:
                    </td>
                    <td style="width: 85%">2 Hours (Must be listed in hours)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Bumper Instruction:
                    </td>
                    <td style="width: 85%">* See Parts Guidelines Above *
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">AntiFreeze:
                    </td>
                    <td style="width: 85%">$10.00 per Gallon
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">GlassKit:
                    </td>
                    <td style="width: 85%">$12.00 for R &amp; I Operations Only
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Freon:
                    </td>
                    <td style="width: 85%">$30.00 plus Booktime R/134 R/12: Prevailing
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Rust Protection:
                    </td>
                    <td style="width: 85%">$9.00 1st panel; $4.00 all others (No Labor)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">StoneGuard:
                    </td>
                    <td style="width: 85%">Including Labor: 0.5 Hr 1st Panel: 0.3 all others
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Flex Additive:
                    </td>
                    <td style="width: 85%">Full Bumper: $12.00 (No Labor): $6.00 Minor Parts
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Cover Car for Overspray:
                    </td>
                    <td style="width: 85%">$5.00 + 0.3 Hr Body Labor
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Haz Waste Removal:
                    </td>
                    <td style="width: 85%">$3.00 (Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Tint &amp; Blend:
                    </td>
                    <td style="width: 85%">1/2 Base Refinish Time: inc C/C (2 Panel Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Tape Stripe:
                    </td>
                    <td style="width: 85%">0.3 Hour - 1st Panel: 0.1 all others ($10.00 Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%">Paint Stripe:
                    </td>
                    <td style="width: 85%">1.0 Hour - 1st Panel: 0.5 all others (2.5 Max)
                    </td>
                </tr>
                <tr>
                    <td style="font-style: italic; width: 15%" valign="Top">Betterment Guidelines:
                    </td>
                    <td style="width: 85%">** First Party Personal Lines = <span class="textBold">NO BETTERMENT</span><br />
                        ** First Party Commercial Lines Insured &amp; Third Party Claimants
                        <ul>
                            <li><span class="textUnderline">Tires</span>: Tread must be guaged and shown on estimate.  Betterment is based on percent used vs. new.</li>
                            <li><span class="textUnderline">Engine/Transmission</span>: Percent used based on life span of 200,000 miles.</li>
                            <li><span class="textUnderline">Convertible Tops</span>: Based on pre-loss condition.</li>
                            <li><span class="textUnderline">Interior</span>: Based on pre-loss condition.</li>
                            <li><span class="textUnderline">Complete Refinish</span>: Based on pre-loss condition of paint.</li>
                            <li>Other items appraiser feels are applicable.</li>
                        </ul>

                        <span class="textBold">Note: State Regulations supersede any customer specific guidelines.</span>
                    </td>
                </tr>

            </table>
        </td>

    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 2 of 7
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
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
            <div style="margin-top: 20px; text-align: center; text-decoration: underline" class="TextTitle">Claim Assignment</div>
            <div style="margin-top: 10px;" class="TextNormal">
                This is a confirmation that CEI has assigned one of our customers to receive an estimate only at <b><%=this.VendorName%></b>; this is not a repair authorization.  The information on the Claim is as follows:
            </div>

            <!--// Client/Customer Information //-->
            <div style="margin-top: 10px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align: top;">Client Information</td>
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
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td class="TextLargeBold CellTitle" colspan="2" style="vertical-align: top;">Customer Information</td>
                                </tr>
                                <tr>
                                    <td class="TextNormal CellLabel">Name:</td>
                                    <td class="TextNormal CellValue"><%=this.CustomerName%></td>
                                </tr>
                                <tr>
                                    <td class="TextNormal CellLabel">Address:</td>
                                    <td class="TextNormal CellValue"><%=this.CustomerAddress%></td>
                                </tr>
                                <% if (this.CustomerHPhone.Length > 0)
                                    {%>
                                <tr>
                                    <td class="TextNormal CellLabel">Home Phone #:</td>
                                    <td class="TextNormal CellValue"><%=this.CustomerHPhone%></td>
                                </tr>
                                <%}
                                    if (this.CustomerHMPhone.Length > 0)
                                    {%>
                                <tr>
                                    <td class="TextNormal CellLabel">Mobile Phone #:</td>
                                    <td class="TextNormal CellValue"><%=this.CustomerHMPhone%></td>
                                </tr>
                                <%}
                                    if (this.CustomerWPhone.Length > 0)
                                    {%>
                                <tr>
                                    <td class="TextNormal CellLabel">Work Phone #:</td>
                                    <td class="TextNormal CellValue"><%=this.CustomerWPhone%></td>
                                </tr>
                                <%}
                                    if (this.CustomerWMPhone.Length > 0)
                                    {%>
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
            <div style="margin-top: 10px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td class="TextLargeNormal CellTitle" colspan="2"><b>Vehicle Information</b> (please verify all information at time of inspection.)</td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
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
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
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
            <div style="margin-top: 10px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td class="TextLargeNormal CellTitle" colspan="2"><b>Damage Information</b></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
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
                        <td style="vertical-align: top; width: 50%;">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
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
            <div style="margin-top: 30px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
                    <tr>
                        <td class="TextLargeNormal CellTitle"><b>Important Instructions</b> (in order to expedite repair approval/payment.)</td>
                    </tr>
                    <tr>
                        <td class="TextNormal">
                            <ol>
                                <li>If you are unable to handle this assignment, please call CEI at <span style="white-space: nowrap;">1-877-307-0460</span> immediately.</li>
                                <li>If there are any problems with towing, please contact CEI at <span style="white-space: nowrap;">1-877-307-0460</span>.</li>
                                <li>CEI Must be contacted with the estimate within 12 hours from the time the Customer or vehicle arrives at the shop.</li>
                                <li>Please complete estimate and photos in Pathways or CCCOne and lock the estimate.  When estimate is locked, CCC will send the estimate to CEI.  If you do not use CCCOne or Pathways for your estimating software, please enter the estimate and photos using the CCC Portal.</li>
                                <li>This is not a repair approval. Authorizations and Purchase Orders will originate from CEI only.</li>
                                <li>Upon inspection of a drivable vehicle, if you feel vehicle is unsafe, please contact CEI immediately.</li>
                                <li>Please have the attached Direction of Payment (DOP) signed at the time of the estimate in order to ensure direct payment. Fax document to: <span style="white-space: nowrap;">215-485-4663</span></li>
                                <li>Payment will be processed after repair completion and receipt of completed Certification of Satisfaction / Release (at lower section of Repair Authorization, DOP &amp; Release document).</li>
                            </ol>
                        </td>
                    </tr>
                </table>
            </div>

            <!--// Decals / Paintless Dent Removal (PDR) Information //-->
            <div style="margin-top: 30px;">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
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
                    If the Customer does not come in by this date please call CEI at <span style="white-space: nowrap;">1-877-307-0460</span>, so that we may inform our client.
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 3 of 7
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body - Basic Claim Information Form, CCC Information Services Inc. Page 1-->
    <tr>
        <td width="100%">
            <div id="CCCBasicClaimInfoFromPage1">
                <div class="TextNormal Center80Pct ElevenPt">
                    **Vehicle Owner <b><u>MUST</u></b> receive a copy of the Final Repair Estimate from the repair facility**
                </div>
                <div class="TextNormal Center35Pct ElevenPt">
                    BASIC CLAIM INFORMATION FORM
                </div>
                <div class="TextNormal Center35Pct ElevenPt">
                    CCC INFORMATION SERVICES INC.
                </div>
                <div class="CCCLogo"></div>
                <div class="CCCAdminForm">
                    <table>
                        <thead>
                            <tr>
                                <td colspan="6" class="ElevenPt textBold ">ADMINISTRATIVE</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="formLabel">Office ID Number:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Valuation Req #:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Claim Number:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Adjr. Last Name:</td>
                                <td class="formBlankHalf">&nbsp;</td>
                                <td class="formLabelHalf">1<sup>st</sup> Name:</td>
                                <td class="formBlankHalf">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Insured's Name:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Owner's Name:</td>
                                <td class="formBlank" style="font-family: Andalus;">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Owner's Phone #:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Owner's Zip Code:</td>
                                <td class="formBlankHalf">&nbsp;</td>
                                <td class="formLabelHalf">State:</td>
                                <td class="formBlankHalf">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Exch/Policy #:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Adjuster ID#:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Claim Class:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">PA Appraiser ID#:</td>
                                <td class="formBlank" style="font-family: Andalus;">&nbsp;</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="formLabel">Email address:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td class="formLabel formLabelPadding">Fax Back to:</td>
                                <td class="formBlank">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="formLabel">Type of Loss:</td>
                                <td colspan="5"><span>T (Theft)</span><span class="spanSpaces">&nbsp;</span><span>C (Other)</span><span class="spanSpaces">X</span></td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <div style="float: left;">VIN</div>
                                    <div>
                                        <ul class="vinBoxes" style="position: relative; top: -30px !important;">
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                            <li></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <ul class="vinInfo">
                                        <li>State:</li>
                                        <li>Loss Date:</li>
                                        <li>Year</li>
                                        <li>Make</li>
                                        <li>Model</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <ul class="bodyStyle">
                                        <li class="start">Body Style:</li>
                                        <li>2DR</li>
                                        <li class="square"></li>
                                        <li>4DR</li>
                                        <li class="square"></li>
                                        <li>Lift/Hatchback</li>
                                        <li class="square"></li>
                                        <li>Convertible</li>
                                        <li class="square"></li>
                                        <li>Wagon</li>
                                        <li class="square"></li>
                                        <li>Pickup</li>
                                        <li class="square"></li>
                                        <li>Van</li>
                                        <li class="square"></li>
                                        <li>Utility</li>
                                        <li class="square"></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <ul class="bodyStyle" style="margin-left: 52px;">
                                        <li>&frac12;Ton</li>
                                        <li class="square"></li>
                                        <li>&frac34Ton</li>
                                        <li class="square"></li>
                                        <li>Shortbed</li>
                                        <li class="square"></li>
                                        <li>Longbed</li>
                                        <li class="square"></li>
                                        <li>Cab & Chassis</li>
                                        <li class="square"></li>
                                        <li>Fleetside</li>
                                        <li class="square"></li>
                                        <li>Fenderside</li>
                                        <li class="square"></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <ul class="engineDetail">
                                        <li class="start">Engine Detail:</li>
                                        <li>Size:</li>
                                        <li style="margin-top: 0px;"><span class="spanSpaces"></span></li>
                                        <li>Cylinders:</li>
                                        <li>3</li>
                                        <li class="square"></li>
                                        <li>4</li>
                                        <li class="square"></li>
                                        <li>5</li>
                                        <li class="square"></li>
                                        <li>6</li>
                                        <li class="square"></li>
                                        <li>8</li>
                                        <li class="square"></li>
                                        <li>12</li>
                                        <li class="square"></li>
                                        <li>10</li>
                                        <li class="square"></li>
                                        <li>Turbo</li>
                                        <li class="square"></li>
                                        <li>Diesel</li>
                                        <li class="square"></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <ul class="transmission">
                                        <li class="start">Transmission:</li>
                                        <li>AT:</li>
                                        <li class="square"></li>
                                        <li>S6</li>
                                        <li class="square"></li>
                                        <li>S5</li>
                                        <li class="square"></li>
                                        <li>S4</li>
                                        <li class="square"></li>
                                        <li>S3</li>
                                        <li class="square"></li>
                                        <li>OD</li>
                                        <li class="square"></li>
                                        <li>4W</li>
                                        <li class="square"></li>
                                        <li>PO</li>
                                        <li class="square"></li>
                                        <li>TX</li>
                                        <li class="square"></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <div style="position: relative; top: -30px;">
                                        <div style="float: left; font-size: 0.7em;">
                                            Mileage ('UNK' if unknown)
                                        </div>
                                        <div class="formBlank" style="position: relative; left: 35px; top: 25px; width: 40%;">
                                            &nbsp;
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="ElevenPt textBold" colspan="6">
                                    <div style="margin-top: -35px;">
                                        <table class="vehicleOptions">
                                            <thead>
                                                <tr>
                                                    <td colspan="6" class="ElevenPt textBold ">VEHICLE OPTIONS</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Power Options</td>
                                                    <td>Radio Options</td>
                                                    <td>Wheel Options:</td>
                                                    <td>Truck/Van/Utv/Other</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PS Pwr Strng</td>
                                                    <td><span class="spanSpaces"></span>AM AM</td>
                                                    <td><span class="spanSpaces"></span>AW Alum/Alloy Whls</td>
                                                    <td><span class="spanSpaces"></span>SB Step Bumper</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PB Pwr Brakes</td>
                                                    <td><span class="spanSpaces"></span>FM FM</td>
                                                    <td><span class="spanSpaces"></span>LC Locking Whl. Covers</td>
                                                    <td><span class="spanSpaces"></span>SW Sliding Rear Window</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PW Pwr Wdws</td>
                                                    <td><span class="spanSpaces"></span>ST Stereo</td>
                                                    <td><span class="spanSpaces"></span>SA Spoked Alum. Wheels</td>
                                                    <td><span class="spanSpaces"></span>XT Auxiliary Fuel Tank</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PL Power Locks</td>
                                                    <td><span class="spanSpaces"></span>CA Cassette</td>
                                                    <td><span class="spanSpaces"></span>SY Styled Steel Wheels</td>
                                                    <td><span class="spanSpaces"></span>D2 Deluxe 2-Tone Paint</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>SP Pwr. Drive Seat</td>
                                                    <td><span class="spanSpaces"></span>SE Seek/Scan</td>
                                                    <td><span class="spanSpaces"></span>WW Wire Wheels</td>
                                                    <td><span class="spanSpaces"></span>BD Running Boards/Side Steps</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PC Pwr. Pass. Seat</td>
                                                    <td><span class="spanSpaces"></span>8T * Track</td>
                                                    <td><span class="spanSpaces"></span>WC Wire Wheel Covers</td>
                                                    <td><span class="spanSpaces"></span>BL Bed Liner</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PA Pwr. Antenna</td>
                                                    <td><span class="spanSpaces"></span>CB CB Radio</td>
                                                    <td><span class="spanSpaces"></span>RW Rally Wheels</td>
                                                    <td><span class="spanSpaces"></span>AR Bed Rails</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>PT Pwr. Trnk/Tlgate</td>
                                                    <td><span class="spanSpaces"></span>EQ Equalizer</td>
                                                    <td><span class="spanSpaces"></span>DC Deluxe Whl. Covers</td>
                                                    <td><span class="spanSpaces"></span>TP Towing Package</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>BM Bose Music Sys</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>TN Tonneau Cover</td>
                                                </tr>
                                                <tr>
                                                    <td>Roof Options</td>
                                                    <td class="TextSmallNormal"><span class="spanSpaces"></span>IS Infinity Sound</td>
                                                    <td>Other Options</td>
                                                    <td class="TextSmallNormal"><span class="spanSpaces"></span>RB Roll Bar</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>VR Vinyl Roof</td>
                                                    <td><span class="spanSpaces"></span>JB JBL Stereo</td>
                                                    <td><span class="spanSpaces"></span>WG Wood grain</td>
                                                    <td><span class="spanSpaces"></span>TB Perm Tool Bx</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>ES Electric Steel</td>
                                                    <td><span class="spanSpaces"></span>CD CD Player</td>
                                                    <td><span class="spanSpaces"></span>BN Body Side Molding</td>
                                                    <td><span class="spanSpaces"></span>GG Grill Guards</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>EG Electric Glass</td>
                                                    <td><span class="spanSpaces"></span>SK CD Changer/Stacker</td>
                                                    <td><span class="spanSpaces"></span>BS Bucket Seats</td>
                                                    <td><span class="spanSpaces"></span>WD Dual Rear Whls</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>MS Manual Steel</td>
                                                    <td><span class="spanSpaces"></span>TQ Strng Whl Touch Ctrls</td>
                                                    <td><span class="spanSpaces"></span>HB Hiback Bucket Sts</td>
                                                    <td><span class="spanSpaces"></span>A2 2 Whl. Antilock Brk</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>MG Manual Glass</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>RL Reclining Seats</td>
                                                    <td><span class="spanSpaces"></span>CP Fiberglass Top</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>FR Flip Roof</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>BP Split Bench Seats</td>
                                                    <td><span class="spanSpaces"></span>7P 7 Pass Seating</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>SR Sun Roof</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>IW Intermittent Wipers</td>
                                                    <td><span class="spanSpaces"></span>8P 8 Pass Seating</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>SD  Dual Pwr Roofs</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>WP Rear Window Wiper</td>
                                                    <td><span class="spanSpaces"></span>2P 12 Pass Seating</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>TT T-Tops/Panel</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>TG Tinted Glass</td>
                                                    <td><span class="spanSpaces"></span>5P 15 Pass Seating</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>GT Glass T-Top/Panel</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>MP Metallic Paint</td>
                                                    <td><span class="spanSpaces"></span>SS Swivel/Capt. Chrs</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>CT Soft Top</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>2T 2 Tone Paint</td>
                                                    <td><span class="spanSpaces"></span>B4  4 Capt. Chrs</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>HT Hard Top</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>DT Deep Ting Glass</td>
                                                    <td><span class="spanSpaces"></span>B6  6 Capt. Chrs</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>VP Pwr. Conv. Roof</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>AG Air Bag</td>
                                                    <td><span class="spanSpaces"></span>3D 3<sup>rd</sup> Truck Door</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>RR Roof Rack</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>RB Pass. Air Bag</td>
                                                    <td><span class="spanSpaces"></span>4D 4<sup>th</sup>Door Truck/Van</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td><span class="spanSpaces"></span>RM Detachable Roof</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>XG Front Side Air Bag</td>
                                                    <td><span class="spanSpaces"></span>PD Pwr. Sliding Door</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>ZG Rear Side Air Bag</td>
                                                    <td><span class="spanSpaces"></span>EC Entertainment Center</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>AB Antilock Brakes</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr class="TextSmallNormal">
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td><span class="spanSpaces"></span>NV Navigation System</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 5 of 7
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
                        Photos: dsimages@ceinetwork.com
                    </td>
                </tr>

            </table>
        </td>
    </tr>

    <!--// Body - Basic Claim Information Form, CCC Information Services Inc. Page 2-->
    <tr>
        <td width="100%">
            <div class="CCCAdminForm CCCAdminFormP2">
                <table>
                    <tbody>
                        <tr>
                            <td class="ElevenPt textBold" colspan="6">
                                <div>
                                    <table class="Refurbishments">
                                        <thead>
                                            <tr>
                                                <td colspan="6" class="ElevenPt textBold ">REFURBISHMENTS</td>
                                            </tr>
                                        </thead>
                                        <tbody class="TextSmallNormal">
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Transmission:</li>
                                                        <li>Purchase Price<span class="spanSpaces"></span></li>
                                                        <li>Mileage<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Engine:</li>
                                                        <li>Purchase Price<span class="spanSpaces"></span></li>
                                                        <li>Mileage<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Tires:</li>
                                                        <li>Purchase Price<span class="spanSpaces"></span></li>
                                                        <li># of Tires<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Paint:</li>
                                                        <li>Basic<span class="spanSpaces"></span></li>
                                                        <li>Standard<span class="spanSpaces"></span></li>
                                                        <li>Date Painted<span class="spanSpaces"></span></li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Custom<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Interior:</li>
                                                        <li>Leather<span class="spanSpaces"></span></li>
                                                        <li>Vinyl<span class="spanSpaces"></span></li>
                                                        <li>Cloth<span class="spanSpaces"></span></li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Date<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Camper Shell:</li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Date<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Carpet Kit:</li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Date<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Special Wheels:</li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Date<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Other:</li>
                                                        <li>Description<span class="spanSpaces"></span></li>
                                                        <li>Purch. Price<span class="spanSpaces"></span></li>
                                                        <li>Date<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;" class="TextSmallBold">Restored:</li>
                                                        <li>Restoration Amount<span class="spanSpaces"></span></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6" class="TextSmallBold">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="ElevenPt textBold" colspan="6">
                                                    <div>
                                                        <div style="margin-right: 50px; float: left; font-size: 0.8em;">
                                                            Package/Special Features/Additional options (XXXX=call back):
                                                        </div>
                                                        <div class="formBlank" style="margin-left: 385px; width: 50%;">
                                                            &nbsp;
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="ElevenPt textBold" colspan="6">
                                                    <div>
                                                        <div style="margin-right: 50px; float: left; font-size: 0.8em;">
                                                            Email Response to:
                                                        </div>
                                                        <div class="formBlank" style="position: relative; left: 248px; width: 27%;">
                                                            &nbsp;
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6" class="TextSmallBold">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <div class="TextSmallBold">CONDITION RATING</div>
                                                    <div style="float: left; padding-right: 35px; font-size: 0.8em;">Rate each of the following: 0=Below Average, 1 = Average, 2= Above Average, 3 = Exceptional</div>
                                                    <div class="TextSmall">COMMENTS</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;">MC Mechanical:</li>
                                                        <li><span class="spanSpaces"></span>0</li>
                                                        <li><span class="spanSpaces"></span>1</li>
                                                        <li><span class="spanSpaces"></span>2</li>
                                                        <li><span class="spanSpaces"></span>3</li>
                                                        <li class="formBlank commentLine">&nbsp;</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;">T Tires:</li>
                                                        <li><span class="spanSpaces"></span>0</li>
                                                        <li><span class="spanSpaces"></span>1</li>
                                                        <li><span class="spanSpaces"></span>2</li>
                                                        <li><span class="spanSpaces"></span>3</li>
                                                        <li class="formBlank commentLine">&nbsp;</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;">P Paint:</li>
                                                        <li><span class="spanSpaces"></span>0</li>
                                                        <li><span class="spanSpaces"></span>1</li>
                                                        <li><span class="spanSpaces"></span>2</li>
                                                        <li><span class="spanSpaces"></span>3</li>
                                                        <li class="formBlank commentLine">&nbsp;</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;">B Body</li>
                                                        <li><span class="spanSpaces"></span>0</li>
                                                        <li><span class="spanSpaces"></span>1</li>
                                                        <li><span class="spanSpaces"></span>2</li>
                                                        <li><span class="spanSpaces"></span>3</li>
                                                        <li class="formBlank commentLine">&nbsp;</li>
                                                    </ul>
                                                </td>
                                                <tr>
                                                    <td colspan="6">
                                                        <ul>
                                                            <li style="width: 87px;">G Glass</li>
                                                            <li><span class="spanSpaces"></span>0</li>
                                                            <li><span class="spanSpaces"></span>1</li>
                                                            <li><span class="spanSpaces"></span>2</li>
                                                            <li><span class="spanSpaces"></span>3</li>
                                                            <li class="formBlank commentLine">&nbsp;</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <ul>
                                                        <li style="width: 87px;">I Interior</li>
                                                        <li><span class="spanSpaces"></span>0</li>
                                                        <li><span class="spanSpaces"></span>1</li>
                                                        <li><span class="spanSpaces"></span>2</li>
                                                        <li><span class="spanSpaces"></span>3</li>
                                                        <li class="formBlank commentLine">&nbsp;</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6" class="TextSmallBold">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="6" class="TextSmallBold">ADJUSTMENTS</td>
                                            </tr>
                                            <tr>
                                                <td class="formLabel">Pre Tax Adjustment 1:</td>
                                                <td class="formBlank">&nbsp;</td>
                                                <td class="formLabelHalf">Add</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                                <td class="formLabelHalf">Deduct:</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="formLabel">Pre Tax Adjustment 2:</td>
                                                <td class="formBlank">&nbsp;</td>
                                                <td class="formLabelHalf">Add</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                                <td class="formLabelHalf">Deduct:</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="formLabel">Sales Tax%:</td>
                                                <td class="formBlank">&nbsp;</td>
                                                <td class="formLabel" colspan="2" style="font-size: 0.8em;">(Leave blank if using AutoTax)</td>
                                                <td class="formLabelHalf">Deductible:</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="formLabel">Post Tax Adjustment 1:</td>
                                                <td class="formBlank">&nbsp;</td>
                                                <td class="formLabelHalf">Add</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                                <td class="formLabelHalf">Deduct:</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="formLabel">Post Tax Adjustment 1:</td>
                                                <td class="formBlank">&nbsp;</td>
                                                <td class="formLabelHalf">Add</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                                <td class="formLabelHalf">Deduct:</td>
                                                <td class="formBlankHalf">&nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </td>
    </tr>

    <!--// Footer -->
    <tr>
        <td width="100%">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 6 of 7
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-bottom: solid 1px black;" class="textSmall">
                        <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%><br />
                        4850 Street Road, Suite 200
                        <br />
                        Trevose, PA 19053
                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-bottom: solid 1px black;" class="textSmall">Phone: 1-877-307-0460
                        <br />
                        Fax: 1-215-485-4663
                        <br />
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
                    <td style="width: 20%" valign="top">Customer Name:</td>
                    <td style="width: 30%" valign="top"><%=this.ClientName %></td>
                    <td style="width: 20%" valign="top">Shop Name:</td>
                    <td style="width: 30%" valign="top"><%=this.VendorName %></td>
                </tr>
                <tr>
                    <td style="width: 20%" valign="top">Customer Claim #:</td>
                    <td style="width: 30%" valign="top"><%=this.ClientClaimNumber %></td>
                    <td style="width: 20%" valign="top">Shop Contact:</td>
                    <td style="width: 30%" valign="top"><%=this.VendorContactName %></td>
                </tr>
                <tr>
                    <td style="width: 20%" valign="top">Veh. Owner:</td>
                    <td style="width: 30%" valign="top"><%=this.VehicleOwnerName %></td>
                    <td style="width: 20%" valign="top">Shop Phone:</td>
                    <td style="width: 30%" valign="top"><%=this.VendorPhone %></td>
                </tr>
                <tr>
                    <td style="width: 20%" valign="top">Owner Phone:</td>
                    <td style="width: 30%" valign="top"><%=this.VehicleOwnerPhone %></td>
                    <td style="width: 20%" valign="top">Vehicle:</td>
                    <td style="width: 30%" valign="top"><%=this.VehicleYear %> <%=this.VehicleMake %> <%=this.VehicleModel %></td>
                </tr>
                <tr>
                    <td style="width: 20%" valign="top">Deductible:</td>
                    <td style="width: 30%" valign="top"><%=this.VehicleDeductible %></td>
                    <td style="width: 20%" valign="top">P.O.I.</td>
                    <td style="width: 30%" valign="top"><%=this.DamagePrimary %></td>
                </tr>
                <tr>
                    <td style="width: 20%" valign="top">Date of Loss:</td>
                    <td style="width: 30%" valign="top"><%=this.Helper.DateOfLoss %></td>
                    <td style="width: 20%" valign="top">VIN#:</td>
                    <td style="width: 30%" valign="top"><%=this.Helper.VehicleVin %></td>
                </tr>

            </table>
            <br />
            <div style="width: 100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">***Acknowledgement of vehicle owner rights to choose (Connecticut Claims Only)***
                </span>
                <br />
                <p>
                    In accordance with Connecticut Senate House Bill 5152, effective 01/09/2009, this written acknowledgement is required prior to having
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
            <div style="width: 100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">***Authorization to repair***
                </span>
                <br />
                <p>
                    I am the owner of this vehicle and authorize the above named auto repair facility to make the necessary repairs in 
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
            <div style="width: 100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">***Direction of Pay***
                </span>
                <br />
                <p>
                    I authorize Chubb / <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%> to make payment on my behalf to the above mention auto repair shop for the portion 
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
            <div style="width: 100%; border: solid 1px black; padding: 5px;">
                <span style="text-align: center; width: 100%" class="text textBold">***Certificate of Satisfaction / Release***
                </span>
                <br />
                <p>
                    I certified that I am the owner of the vehicle identified at the top of this form and that I have inspected the 
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
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr style="border-bottom: solid 1px black">
                    <td align="left" style="width: 50%; border-top: solid 1px black;" class="textSmall">Copyright 2014, <%=this.getProperCEIName(this.getOrgCountryId(), "The CEI Group, Inc.")%>  Proprietary and Confidential.<br />

                    </td>
                    <td align="right" style="width: 50%; text-align: right; border-top: solid 1px black;" class="textSmall">Page 7 of 7
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<script runat="server">

    public override string NTAccount
    {
        get
        {
            return "";
        }
    }

    public override string Subject
    {
        get
        {
            return "Chubb Claim Assignment - Claim Id: {0}";
        }
    }

    private string FormatPhone(string Phone)
    {
        switch (Phone.Length)
        {
            case 11:
                return string.Format("{0} ({1}) {2}-{3}", Phone.Substring(0, 1), Phone.Substring(1, 3), Phone.Substring(4, 3), Phone.Substring(7));
            case 10:
                return string.Format("({0}) {1}-{2}", Phone.Substring(0, 3), Phone.Substring(3, 3), Phone.Substring(6));
            case 7:
                return string.Format("{0}-{1}", Phone.Substring(0, 3), Phone.Substring(3));
        }
        return Phone;
    }

    private CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee ClaimEmployee
    {
        get
        {
            if (Session["ClaimEmployee"] is Nullable)
            {
                Session["ClaimEmployee"] = new CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee(this.Helper.Claim);
            }
            return (CEI.Application.Intelliclaim.UserService.BusinessObject.LossNotice.ClaimEmployee)Session["ClaimEmployee"];
        }
    }



    private string ClientName { get { try { return this.Helper.Client.DisplayName; } catch { return string.Empty; } } }
    private string ClientBranch { get { try { return this.Helper.Claim.OrgUnit.DisplayName; } catch { return string.Empty; } } }
    private string ClientFinancialId { get { try { return this.Helper.Claim.ClaimID.ToString() + this.Helper.Vendor.FinancialID; } catch { return string.Empty; } } }

    private string ClaimId { get { try { return this.Helper.Claim.ClaimID.ToString(); } catch { return string.Empty; } } }
    private string CustomerName { get { try { return this.Helper.ContactName; } catch { return string.Empty; } } }
    private string CustomerAddress { get { try { return this.Helper.ContactAddress; } catch { return string.Empty; } } }
    private string CustomerHPhone { get { try { return this.Helper.ContactHomePhone; } catch { return string.Empty; } } }
    private string CustomerHMPhone { get { try { return this.Helper.ContactMobileHomePhone; } catch { return string.Empty; } } }
    private string CustomerWPhone { get { try { return this.Helper.ContactWorkPhone; } catch { return string.Empty; } } }
    private string CustomerWMPhone { get { try { return this.Helper.ContactMobileWorkPhone; } catch { return string.Empty; } } }

    private string VehicleYear { get { try { return this.Helper.VehicleYear; } catch { return string.Empty; } } }
    private string VehicleMake { get { try { return this.Helper.VehicleMake; } catch { return string.Empty; } } }
    private string VehicleModel { get { try { return this.Helper.VehicleModel; } catch { return string.Empty; } } }
    private string VehicleStyle { get { try { return this.Helper.VehicleStyle; } catch { return string.Empty; } } }

    private string VehicleColor { get { try { return this.Helper.VehicleColor; } catch { return string.Empty; } } }

    private string VehicleVIN { get { try { return this.Helper.VehicleVin; } catch { return string.Empty; } } }
    private string VehiclePlate { get { try { return this.Helper.VehiclePlate; } catch { return string.Empty; } } }
    private string VehicleMileage { get { try { return this.Helper.VehicleMileage; } catch { return string.Empty; } } }
    private string VehicleDeductible { get { try { return this.Helper.VehicleDeductible; } catch { return string.Empty; } } }

    private string DamagePrimary
    {
        get
        {
            try
            {
                CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.PrimaryDamageAreaID);
                return DA.Name;
            }
            catch { return string.Empty; }
        }
    }
    private string DamageAdditional
    {
        get
        {
            try
            {
                CEI.Application.Intelliclaim.UserService.BusinessObject.DamageArea DA = new DamageArea(this.Helper.Claim.AccidentDescription.AdditionalDamageAreaID);
                return DA.Name;
            }
            catch { return string.Empty; }
        }
    }
    private string DamageLocation
    {
        get
        {
            try
            {
                CEI.Application.Intelliclaim.UserService.BusinessObject.AccidentLocation AL = new AccidentLocation(this.Helper.Claim.AccidentDescription.AccidentLocationID);
                return AL.Name;
            }
            catch { return string.Empty; }
        }
    }
    private string DamageDamageArea { get { try { return this.Helper.Claim.AccidentDescription.DamageArea; } catch { return string.Empty; } } }

    private string VendorAppointmentDate { get { try { return this.Helper.ShopEstimateAssignment.Assignment_DT.DisplayDate; } catch { return string.Empty; } } }

    private string VendorName { get { try { return this.Helper.Vendor.DisplayName; } catch { return string.Empty; } } }
    private string VendorAddress { get { try { return this.Helper.Vendor.Details.Address.TransformAddress(ContactComponetUtilities.FormatOptions.HTML); } catch { return string.Empty; } } }
    private string VendorPhone { get { try { return this.FormatPhone(this.Helper.Vendor.Details.Phone2); } catch { return string.Empty; } } }


    private string VendorContactName
    {
        get
        {
            VendorContact contact = null;
            if (this.Helper.Vendor != null && this.Helper.Vendor.Contacts.Count > 0)
            {

                foreach (VendorContact c in this.Helper.Vendor.Contacts)
                {
                    if (c.ContactTypeID == 11)
                    {
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
    private string VehicleOwnerPhone
    {

        get
        {
            string returnValue = string.Empty;
            if (this.Helper.ClaimV2.Vehicle.Driver != null)
            {
                var driver = this.Helper.ClaimV2.Vehicle.Driver;
                string phone = driver.PhoneHome;
                if (string.IsNullOrEmpty(phone)) phone = driver.CellPhoneHome;
                if (string.IsNullOrEmpty(phone)) phone = driver.CellPhoneWork;
                if (string.IsNullOrEmpty(phone)) phone = driver.PhoneWork;

                if (!string.IsNullOrEmpty(phone))
                {
                    returnValue = this.FormatPhone(phone);
                }
            }
            return returnValue;
        }

    }

    private string VehicleOwnerName
    {
        get
        {

            string returnValue = string.Empty;
            if (this.Helper.ClaimV2.Vehicle.Driver != null)
            {
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
        return returnVal;
    }
    //END HACK ALERT!

</script>
