<tr>
    <td style="padding: 40px 40px 0 40px;">
        <span style="color: {{ orange }}">
            {{> atoms/blockTitle
            value = "Checkliste f�r Ihre Miete" %]
        </span>
    </td>
</tr>
<tr>
    <td style="padding: 10px 40px 0 40px;">
        {{> atoms/header1 }}
        value = "Bitte bringen Sie Ihre Dokumente mit" %]
    </td>
</tr>
<tr>
    <td style="padding: 10px 40px;">
        {{> atoms/standard
        value = "Diese Dokumente sind gesetzlich erforderlich, um den Mietvertrag abzuschlie�en." }}
    </td>
</tr>

<tr>
    <td class="three-column" style="text-align: center; font-size: 0; padding: 0 0 30px 40px;">

        <!--[if (gte mso 9)|(IE)]>
        <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
            <tr>
                <td width="50%" valign="top">
        <![endif]-->

        <div class="column" style="width: 336px; float: left;">
            <table class="contents" style="font-size: 14px;" width="336" cellpadding="0" cellspacing="0" align="left">
                <tr>
                    <td width="152" style="width: 152px; padding-top: 10px;" align="left">
                        <img src="[% $links.body.assets_baseurl %]assets/Creadit card icon@2x.png"
                             alt="Credit Card" style="width:152px; height:92px;" width="152" height="92">
                    </td>
                    <td class="inner" align="left" width="106" height="92">
                        {{> atoms/plus
                        width = "106"
                        align = "left" }}
                    </td>
                </tr>
                <tr>
                    <td class="text" align="left" width="230" style="padding: 10px 0;">
                        {{> specifics/pam/documents/creditCard_hint }}
                    </td>
                    <td width="106">&nbsp;</td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td><td width="50%" valign="top">
        <![endif]-->

        <div class="column" style="width: 230px; float: left;">
            <table class="contents" style="font-size: 14px;" width="230" cellpadding="0" cellspacing="0"  align="left">
                <tr>
                    <td width="152" style="width: 152px; padding-top: 10px;" align="left">
                        <img src="[% $links.body.assets_baseurl %]assets/Drivers licence icon@2x.png"
                             alt="Drivers Licence" style="width: 152px; height: 92px;" width="152" height="92">
                    </td>
                </tr>
                <tr>
                    <td class="text" align="left" style="padding: 10px 0;">
                        {{> specifics/pam/documents/driversLicense_hint }}
                    </td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td>
        </tr>
        </table>
        <![endif]-->

    </td>
</tr>
