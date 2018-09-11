[%*
    ContentTeaser - OCI Invite Submodule
    ------------------------------------

    Input variables:
        $charge_icon_url:           : Charge icon url
        $button_link                : Button link

    Internal variable description:

*%]

<table class="header_outer" align="center" style="width: 100%; border-spacing: 0; font-size: 0px; border-collapse: collapse;"
       cellpadding="0" cellspacing="0" border="0" bgcolor="{{ orange }}">
    <tr>
        <td style="padding: 20px 40px 10px 40px;" bgcolor="{{ orange }}">
            <span style="color: {{ "white" }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    <tr>
        <td style="padding: 0 40px 20px 40px;" bgcolor="{{ orange }}">
            {{> atoms/header1 value=header1_var }}
        </td>
    </tr>
    <tr>
        <td class="two-column" style="text-align: center; font-size: 0; padding: 10px 0;" bgcolor="{{ orange }}">

            <!--[if (gte mso 9)|(IE)]>
            <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
                <tr>
                    <td width="50%" valign="top">
            <![endif]-->

            <div class="column1" align="center"
                 style="width: 100%; max-width: 300px; display: inline-block; vertical-align: top;">
                <table cellpadding="0" cellspacing="0" border="0" bgcolor="{{ orange }}">
                    <tr>
                        <td style="padding-bottom: 20px;" height="164" bgcolor="{{ orange }}">
                            <img src="[% $links.body.assets_baseurl %]{{ "charge_icon_url" }}"
                                 alt="" style="width: 135px; height: 164px; display: block;"
                                 width="135" height="164">
                        </td>
                    </tr>
                </table>
            </div>

            <!--[if (gte mso 9)|(IE)]>
            </td><td width="50%" valign="top">
            <![endif]-->

            <div class="column2"
                 style="width: 100%; max-width: 300px; display: inline-block; vertical-align: top; text-align: left"
                 align="center" width="300">

                <!-- for each?? -->
                <table cellspacing="0" cellpadding="0" border="0" width="300" align="center">
                    <tr>
                        <td style="padding: 0 20px 20px 0;" width="300" bgcolor="{{ orange }}">
                            {{> atoms/standard value=block_description %]
                        </td>
                    </tr>
                    <tr align="left">
                        <td bgcolor="{{ orange }}">
                            {{> atoms/button
                            value = $button_text
                            link = $button_link
                            color = "white"
                            no_border = true %]
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
</table>
