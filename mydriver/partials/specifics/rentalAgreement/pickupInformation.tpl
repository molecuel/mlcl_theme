<table width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td style="padding-right: 10px;">
            <span style="font-weight: bold">
                {{> atoms/standard value=vehicle_text %]
            </span>
        </td>
        <td>
            {{> atoms/standard value=car %]
        </td>
    </tr>

    <tr>
        <td style="padding: 5px 10px 5px 0;">
            <span style="font-weight: bold">
                {{> atoms/standard value=reg_number_text %]
            </span>
        </td>
        <td style="padding: 10px 10px 10px 0;">
            <table cellpadding="0" cellspacing="0" border="0" style="border-collapse: separate;
                border: 1px solid black; border-radius: 3px; padding: 4px;">
                <tr>
                    <td style="font-weight: bold;" valign="center">
                        <span style="font-size: 24px; line-height: 1.14; font-weight: bold; line-height: 1.04;
                         letter-spacing: 0.3px; {{> atoms/fonts/font_family_roboto %]">
                        {{ "license_plate" }}
                        </span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td style="padding-right: 10px;">
            <span style="font-weight: bold">
                {{> atoms/standard value=pickup_text %]
            </span>
        </td>
        <td>
            {{> atoms/standard value=pickup %]
        </td>
    </tr>

    [% if $damages_listing|@count > 0 %]
    <tr>
        <td style="padding: 20px 0;">
                <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
                        <td style="padding-bottom: 10px;">
                            <span style="font-weight: bold">
                                {{> atoms/standard value=damages_text %]
                            </span>
                        </td>
                    </tr>
                    [% foreach from=$damages_listing item=position %]
                    <tr>
                        <td>
                            <span style="font-size: 14px; color: {{ orange }}">&#x25A0; </span>
                            {{> atoms/standard value=position %]
                        </td>
                    </tr>
                    [% /foreach %]
                </table>
        </td>
    </tr>
    [% /if %]
</table>
