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
        $oci_link_color               : Module's link color
*%]


[% if $color == "white" %]
    [% assign var="oci_background_color" value=white %]
    [% assign var="oci_link_color" value=orange %]
[% else %]
    [% assign var="oci_background_color" value=orange %]
    [% assign var="oci_link_color" value=white %]
[% /if %]

<tr style="border: 0; background: {{ "oci_background_color" }};">
    <td style="padding: 40px 40px 0 40px;">
        <table cellspacing="0" cellpadding="0" border="0">
            [% if $color == "white" %]
            <tr>
                <td style="color: {{ orange }};">
                    {{> atoms/blockTitle value=block_title }}
                </td>
            </tr>
            [% /if %]
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/header1 value=title %]
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/standard value=text1 %]
                </td>
            </tr>
            [% if $text2_bold %]
            <tr>
                <td style="padding: 10px 0; font-weight: bold;">
                    {{> atoms/standard value=text2_bold %]
                </td>
            </tr>
            [% /if %]
            [% if $text3 %]
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/standard value=text3 %]
                </td>
            </tr>
            [% /if %]
            [% if $link %]
            <tr>
                <td style="color: {{ orange }}; padding: 10px 0;">
                    {{> atoms/fonts/link
                    link_value=link
                    link_url=$link
                    link_color=$orange
                    link_decoration = "none" %]
                </td>
            </tr>
            [% /if %]
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/standard value=text4 %]
                </td>
            </tr>
            <tr>
                <td style="padding-top: 20px;" align="center">
                    {{> molecules/app_icons icon_color = $color %]
                </td>
            </tr>
        </table>
    </td>
</tr>
