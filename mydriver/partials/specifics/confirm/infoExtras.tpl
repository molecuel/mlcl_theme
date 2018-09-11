[%*
    ContentTeaser - OCI Invite Submodule
    ------------------------------------

    Input variables:
        $charge_icon_url:           : Charge icon url
        $button_link                : Button link

    Internal variable description:

*%]

<table cellpadding="0" cellspacing="0" border="0">
    <tr bgcolor="{{ "white" }}" >
        <td style="padding: 20px 0;">
        <span style="color: {{ orange }}">
            {{> atoms/blockTitle value=block_title }}
        </span>
        </td>
    </tr>
    <tr>
        <td style="padding: 10px 0;">
            {{> atoms/header1 value=header1_var }}
        </td>
    </tr>
    <tr bgcolor="{{ "white" }}">
        <td class="two-column" style="text-align: center; font-size: 0; padding-bottom: 20px;" align="center" width="100%">

            <!--[if (gte mso 9)|(IE)]>
            <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
                <tr>
                    <td width="50%" valign="top">
            <![endif]-->

            <div class="column1"
                 style="width: 100%; max-width: 200px; display: inline-block; vertical-align: top;">
                <table cellpadding="0" cellspacing="0" border="0" align="center">
                    <tr>
                        <td width="135" style="padding: 10px;">
                            <img src="[% $links.body.assets_baseurl %]{{ "charge_icon_url" }}"
                                 alt="" style="width: 135px; height: 164px;" width="135" height="164">
                        </td>
                    </tr>
                </table>
            </div>

            <!--[if (gte mso 9)|(IE)]>
            </td><td width="50%" valign="top">
            <![endif]-->

            <div class="column2"
                 style="width: 100%; max-width: 300px; display: inline-block; vertical-align: top;">

                <table cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td width="300" align="left" style="padding: 10px 0 20px 0;">
                            <!-- for each?? -->
                            <div>
                                {{> atoms/standard value=block_description }}
                            </div>
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            {{> atoms/button
                            value = button_text
                            link = button_link
                            color = "orange"
                            no_border = true
                            }}
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
