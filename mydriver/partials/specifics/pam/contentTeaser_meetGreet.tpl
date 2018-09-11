[% if $color == "white" %]
    [% assign var="oci_background_color" value=white %]
[% else %]
    [% assign var="oci_background_color" value=orange %]
[% /if %]

<tr style="border: 0; background: {{ "oci_background_color" }}">
    <td style="padding: 15px 40px">
        <table cellpadding="0" cellspacing="0" border="0">
            [% if $PAM_pickup_meet_greet_info %]
                {{> molecules/infoBlock
                block_title = $block_title
                title = $lh->gettext("Fahrzeugabholung [_1]", $PAM_pickup_title)
                content = $PAM_pickup_meet_greet_info
                %]
            [% /if %]

            [% if $PAM_return_meet_greet_info2 %]
                {{> molecules/infoBlock
                title = $lh->gettext("Fahrzeugr�ckgabe [_1]", $PAM_return_title)
                content = $PAM_return_meet_greet_info2
                %]
            [% /if %]
        </table>
    </td>
</tr>

