<table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
        <td style="padding-bottom: 15px;">
            {{> atoms/header1"
            value = "Shuttle Informationen" %]
        </td>
    </tr>
    <tr>
        <td style="padding-bottom: 15p;">
            {{> atoms/standard value = $PAM_shuttle_description %]
        </td>
    </tr>
    [% if $PAM_shuttle_url %]
        <tr>
            <td style="padding-bottom: 15px;">
                {{> atoms/standard
                value = "Sehen Sie hier in Echtzeit, wo sich der Sixt Shuttle gerade befindet:" %]
            </td>
        </tr>
        <tr>
            <td style="padding-bottom: 15px;">
                {{> atoms/fonts/link
                link_url = $PAM_shuttle_url
                link_value = $PAM_shuttle_url
                link_decoration = "none"
                link_color = $white %]
            </td>
        </tr>
    [% /if %]
    <tr>
        <td style="padding-bottom: 15px;">
            {{> atoms/standard
            value = "Hier geht es direkt zum Download der Sixt Shuttle Tracker App:" %]
        </td>
    </tr>
    <tr>
        <td align="center" style="padding-top: 20px;">
            {{> molecules/app_icons icon_color = "orange" %]
        </td>
    </tr>
</table>
