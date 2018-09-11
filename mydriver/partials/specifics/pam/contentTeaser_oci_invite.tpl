[%*
    ContentTeaser - OCI Invite Submodule
    ------------------------------------

    Input variables:
        $color                        : "white" / "orange" - This two options are possible. Each of them generates
                                        different output
    Internal variable description:
        $oci_colored_image            : Image url for the choosen submodule type
        $oci_colored_image_radius     : Image radius for the image
        $oci_background_color         : Module background color
        $oci_teaser_button_color      : Teaser button color
        $oci_teaser_button_text_color : Teaser button text color
        $oci_teaaser_text_margin      : Teaser margin

*%]

[% assign var="text" value=lh->gettext("Ihre Angaben sind zu[_1]vollst�ndig") %]
[% assign var="textParts" value="[_1]"|explode:$text %]

[% if $color == "orange" %]
    [% assign var="oci_colored_image" value="assets/OCI-completion-white-desktop-mobile@2x.png" %]
    [% assign var="oci_colored_image_width" value="200" %]
    [% assign var="oci_colored_image_height" value="100" %]
    [% assign var="oci_text_image" value=white %]
    [% assign var="oci_background_color" value=orange %]
    [% assign var="oci_teaser_button_color" value=white %]
    [% assign var="oci_teaser_button_text_color" value=orange %]
[% else %]
    [% assign var="oci_colored_image" value="assets/OCI-completion-black-desktop@2x.png" %]
    [% assign var="oci_colored_image_width" value="200" %]
    [% assign var="oci_colored_image_height" value="100" %]
    [% assign var="oci_text_image" value=black %]
    [% assign var="oci_background_color" value=white %]
    [% assign var="oci_teaser_button_color" value=orange %]
    [% assign var="oci_teaser_button_text_color" value=white %]
[% /if %]

[% if $color == "white" %]
    <tr style="background: {{ "oci_background_color" }}">
        <td style="padding: 15px 40px">
            <span style="color: {{ orange }}">
                {{> atoms/blockTitle
                    value = "Online Checkin"
                %]
            </span>
        </td>
    </tr>
[% /if %]

<tr style="background: {{ "oci_background_color" }}">
    <td class="two-column" style="text-align: center; font-size: 0;">
        <!--[if (gte mso 9)|(IE)]>
        <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
            <tr>
                <td width="50%" valign="top">
        <![endif]-->

        <div class="column1" align="center" style="width: 100%; max-width: 300px; display: inline-block;
         vertical-align: bottom; background: {{ "oci_background_color" }}">
            <table cellpadding="0" cellspacing="0" border="0" align="center" valign="bottom"
                   style="background: {{ "oci_background_color" }}">
                <tr>
                    <td align="center" style="padding: 0 0 10px 0;">
                        <img src="[% $links.body.assets_baseurl %]{{ "oci_colored_image" }}"
                             alt="Oci PAM" style="width: {{ "oci_colored_image_width" }}px; height: {{ "oci_colored_image_height" }}px;
                                display: block;" width="{{ "oci_colored_image_width" }}"
                             height="{{ "oci_colored_image_height" }}">
                    </td>
                </tr>
                <tr>
                    <td width="200" align="center" style="padding-bottom: 20px;">
                        <table cellspacing="0" cellpadding="0" border="0" align="center">
                            <tr>
                                <td align="center">
                                    <span style="font-size: 14px;
                                      line-height: 1.14;
                                      text-transform: uppercase;
                                      color: {{ "oci_text_image" }};
                                      font-weight: bold;
                                      {{> atoms/fonts/font_family_roboto %]">
                                        [% $textParts[0] %]
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span style="font-size: 40px; font-weight: bold; color: {{ "oci_text_image" }};
                                      {{> atoms/fonts/font_family_roboto %]">
                                        80%
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span style="font-size: 14px;
                                      line-height: 1.14;
                                      text-transform: uppercase;
                                      color: {{ "oci_text_image" }};
                                      font-weight: bold;
                                      {{> atoms/fonts/font_family_roboto %]">
                                        [% $textParts[1] %]
                                    </span>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td><td width="50%" valign="top">
        <![endif]-->

        <div class="column2" style="width: 300px; display: inline-block; vertical-align: bottom; text-align: center;
                margin: auto;">

            <table cellspacing="0" cellpadding="0" width="300" align="center">
                <tr align="left">
                    <td style="padding-right: 20px;">
                        <span style="text-align: left;">
                            {{> atoms/header1
                                value = "Sparen Sie Zeit!"
                            }}
                        </span>
                    </td>
                </tr>

                <tr align="left">
                    <td style="padding: 15px 20px 15px 0;">
                        <div style="width: 100%; max-width: 300px;
                                display: inline-block; vertical-align: top; text-align: left">
                            [% if $PAM_pickup_delivery || $PAM_pickup_meet_greet %]
                                {{> atoms/standard value = "Sie wollen Zeit sparen?" %]
                            [% else %]
                                {{> atoms/standard
                                value = "Sie wollen Zeit am Counter sparen?" %]
                            [% /if %]

                            {{> atoms/standard
                            value = "Vervollst�ndigen Sie jetzt Ihre Daten online!" %]
                        </div>
                    </td>
                </tr>
                <tr align="left">
                    <td style="padding: 0 20px 20px 0;">
                        <div style="text-align: left;">
                            <span style="font-weight: bold">
                            {{> atoms/standard
                            value = "Das beansprucht lediglich 2 Minuten." %]
                            </span>
                        </div>
                    </td>
                </tr>

                <tr align="center">
                    <td style="padding-bottom: 20px;">
                        {{> atoms/teaserButton
                        value = "Daten vervollst�ndigen"
                        link = $links.body.oci
                        button_color = $oci_teaser_button_color
                        text_color = $oci_teaser_button_text_color %]
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
