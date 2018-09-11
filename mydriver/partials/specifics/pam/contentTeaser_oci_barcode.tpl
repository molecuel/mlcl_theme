[%*
    ContentTeaser - OCI Barcode Submodule
    ------------------------------------

    Input variables:
        $color                        : "white" / "orange" - This two options are possible. Each of them generates
                                        different output
        $block_title                  : First Module title
        $title                        : Second Module title
        $text1                        : Normal text
        $text2_bold                   : Highlighted (Bold) text
        $text2                        : Normal text

    Internal variable description:
        $oci_background_color         : Module background color
*%]


[% if $color == "white" %]
    [% assign var="oci_background_color" value=white %]
[% else %]
    [% assign var="oci_background_color" value=orange %]
[% /if %]


[% if $color == "white" %]
    <tr style="background: {{ "oci_background_color" }}">
        <td style="padding: 15px 40px;">
            <span style="color: {{ orange }}">
                {{> atoms/blockTitle
                    value = "Online Checkin"
                }}
            </span>
        </td>
    </tr>
    <tr>
        <td style="padding: 0 40px 0 40px;">
            {{> atoms/header1
            value = "Ihre Angaben sind vollst�ndig"
            }}
        </td>
    </tr>
[% /if %]

<tr style="background: {{ "oci_background_color" }}">
    <td class="two-column" style="text-align: center; font-size: 0;" align="center">
        <!--[if (gte mso 9)|(IE)]>
        <table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
            <tr>
                <td width="50%" valign="top">
        <![endif]-->

        <div class="column1" style="display: inline-block; max-width: 300px;">
            <table cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td style="padding: 15px 0;">
                        <img src="{{ "qr_code" }}"
                             alt="QR Code" style="width:245px; height:245px;" width="245" height="245">
                    </td>
                </tr>
            </table>
        </div>

        <!--[if (gte mso 9)|(IE)]>
        </td><td width="50%" valign="top">
        <![endif]-->

        <div class="column2" style="display: inline-block; max-width: 300px;">
            <table cellpadding="0" cellspacing="0" width="300" align="center">
                <tr align="center">
                    <td align="left" style="padding: 10px 0 0 10px;">
                        {{> atoms/standard value = "Ihre Daten sind vollst�ndig." }}
                        {{> atoms/standard
                        value = "Sie sparen nun wertvolle Zeit. Zeigen Sie Ihren QR-Code direkt am Counter vor." }}
                    </td>
                </tr>
                <tr>
                    <td align="left" style="padding: 10px 0 10px 10px;">
                        <span style="font-weight: bold">
                            {{> atoms/standard
                            value = "Im Anhang finden Sie eine druckfreundliche Version dieser Mail." }}
                        </span>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="padding-left: 10px;">
                        {{> atoms/standard
                        value = "Mit unserer Sixt App k�nnen Sie Ihr Wunschfahrzeug 30 Minuten vor Mietbeginn aus den zur Verf�gung stehenden Fahrzeugen selbst w�hlen." }}
                    </td>
                </tr>
                <tr>
                    <td style="padding: 20px 0 ;" align="center">
                        {{> molecules/app_icons icon_color = $color }}
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
