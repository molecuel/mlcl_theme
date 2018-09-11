[%*
    AppIcons - Submodule
    ------------------------------------

    Input variables:
        $color                        : "white" / "orange" - This two options are possible. Each of them generates
                                        different output.
    Internal variable description:
        $app_apple_icon_image         : Apple icon
        $app_android_icon_image       : Android icon

*%]

[% if $icon_color=="white" %]
    [% assign var="app_apple_icon_image" value="assets/Apple orange@2x.png" %]
    [% assign var="app_android_icon_image" value="assets/Android orange@2x.png" %]
[% else %]
    [% assign var="app_apple_icon_image" value="assets/Apple@2x.png" %]
    [% assign var="app_android_icon_image" value="assets/Android@2x.png" %]
[% /if %]

<table cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td align="center" style="padding: 0 20px;">
                <a href="[% $links.apps.app_store %]" target="_blank">
                    <img src="[% $links.body.assets_baseurl %]{{ "app_apple_icon_image" }}"
                         alt="Apple" style="width: 50px; height:57.7px;"
                         width="50" height="57.7">
                </a>
        </td>
        <td align="center" style="padding: 0 20px;">
            <a href="[% $links.apps.google_play %]" target="_blank">
                <img src="[% $links.body.assets_baseurl %]{{ "app_android_icon_image" }}"
                     alt="Android" style="width:50px;height:57.7px;"
                     width="50" height="57.7">
            </a>
        </td>
    </tr>
</table>
