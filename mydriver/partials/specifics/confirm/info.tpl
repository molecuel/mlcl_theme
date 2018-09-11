    <tr>
        <td style="color: {{ orange }};">
aksjdkasjd
        </td>
    </tr>

[% if asdasdasdt %]
    {{> specifics/confirm/infoMeetGreet %]
[% elseif $CO_pickup_virtual %]
    {{> specifics/confirm/infoVirtual %]
[% /if %]

[% if $CO_show_extras_block %]
    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%">
            {{> specifics/confirm/infoExtras
                block_title = "An alles gedacht?"
                header1_var = $CO_extras_header
                block_description = $CO_extras_description
                charge_icon_url = "assets/"|cat:$CO_extras_icon|cat:"-orange@2x.png"
                button_text = "Jetzt hinzuf�gen"
                button_link = $links.body.oci
            %]
    </table>
[% /if %]
