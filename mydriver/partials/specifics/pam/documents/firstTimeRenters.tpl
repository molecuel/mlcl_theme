[% assign var="block_title" value=lh->gettext("Checkliste f�r Ihre Miete") %]
[% assign var="header" value=lh->gettext("Bitte bringen Sie Ihre Dokumente mit") %]
[% assign var="temp_txt" value=lh->gettext("Diese Dokumente sind gesetzlich erforderlich, um den Mietvertrag abzuschlie�en.") %]

<tr>
    <td style="padding: 40px 40px 5px 40px;">
        <span style="color: {{ orange }}">
            {{> atoms/blockTitle value=block_title }}
        </span>
    </td>
</tr>
<tr>
    <td style="padding: 10px 40px;">
        {{> atoms/header1 value=header }}
    </td>
</tr>
<tr>
    <td style="padding: 0 40px 5px 40px;">
        {{> atoms/standard value=temp_txt }}
    </td>
</tr>
<tr>
    <td class="three-column" style="
        text-align: center;
        font-size: 0;
        padding-top: 10px;
        padding-left: 40px;" align="left" width="100%">

        <!--[if (gte mso 9)|(IE)]>
        <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
            <tr>
                <td width="33%" valign="top">
        <![endif]-->

        <div class="column1" style="width: 198px;
            min-width: 160px;
            display: block;
            float: left;
            vertical-align: top;">
            <table style="font-size: 14px; table-layout: fixed;" width="198"
                cellspacing="0" cellpadding="0" border="0">
                <tr align="left">
                    <td style="width: 125px;" width="125">
                        <img src="[% $links.body.assets_baseurl %]assets/Creadit card icon@2x.png"
                             alt="Credit Card" style="width: 125px; height:75px; display: inline-block;"
                             width="125" height="75">
                    </td>
                    <td style="min-width: 73px" width="73" align="center">
                        <div style="margin: 0; display: inline-block;">
                            {{> atoms/plus
                               width = "73"
                               align = "center"
                            %]
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="text" style="padding: 10px 0 20px 0;" align="left">
                        {{> specifics/pam/documents/creditCard_hint %]
                    </td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td><td width="33%" valign="top">
        <![endif]-->

        <div class="column2" style="width: 198px;
            min-width: 160px;
            display: block;
            float: left;
            vertical-align: top;">
            <table class="contents" style="font-size: 14px; table-layout: fixed;" width="198"
                cellspacing="0" cellpadding="0" border="0">
                <tr align="left">
                    <td style="width: 125px;" width="125">
                        <img src="[% $links.body.assets_baseurl %]assets/Drivers licence icon@2x.png"
                             alt="Drivers licence" style="width:125px; height:75px; display: inline-block;"
                             width="125" height="75">
                    </td>
                    <td style="width: 73px" width="73" align="center">
                        <div style="margin: 0; display: inline-block;">
                            {{> atoms/plus
                               width = "73"
                               align = "center"
                            %]
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="text" style="padding: 10px 0 20px 0;" align="left">
                        {{> specifics/pam/documents/driversLicense_hint %]
                    </td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td><td width="33%" valign="top">
        <![endif]-->

        <div class="column3" style="width: 198px;
            min-width: 198px;
            display: block;
            float: left;
            vertical-align: top;" align="center">
            <table class="contents" style="font-size: 14px; table-layout: fixed;" width="198"
                cellspacing="0" cellpadding="0" border="0">
                <tr align="left">
                    <td style="width: 125px;" width="125" align="left">
                        <img src="[% $links.body.assets_baseurl %]assets/personal ID icon small@2x.png"
                             alt="Personal ID" style="width: 125px; height: 75px; display: inline-block;"
                             width="125" height="75">
                    </td>
                </tr>
                <tr>
                    <td class="text" style="padding: 10px 0 20px 0;" align="left">
                        {{> specifics/pam/documents/ID_hint %]
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
