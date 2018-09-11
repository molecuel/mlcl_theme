<table cellpadding="0" cellspacing="0" border="0" width="100%">
    <tr>
        <td align="left" style="padding-bottom: 10px;">
            <span style="color: {{ orange }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    <tr>
        <td>
            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                [% foreach from=$var_list item=position %]
                <tr>
                    <td width="50%">
                        {{> atoms/standard value=position_0 }}:
                    </td>
                    <td width="50%" align="right">
                        {{> atoms/standard value=position_1 }}
                    </td>
                </tr>
                [% /foreach %]
            </table>
        </td>
    </tr>
    <tr>
        <td width="100%" style="padding: 20px 0;">
            <hr size="1" color="{{ black }};" noshade="" style="background: {{ black }}; border-color: {{ black }};">
        </td>
    </tr>
    <tr>
        <td style="padding-bottom: 10px;">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td width="50%">
                        {{> atoms/header1 value=total_tag }}
                    </td>
                    <td width="50%" align="right" valign="top">
                        {{> atoms/header1 value=total_sum }}
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            {{> atoms/standard value=invoice_taxes_included }}
        </td>
    </tr>
    [% if $hint %]
        <tr>
            <td style="padding: 40px 0 10px 0;">
                {{> atoms/standard value=hint }}
            </td>
        </tr>
    [% /if %]
    <tr>
        <td>
            {{> atoms/fonts/link
            link_value = $invoice_link_name
            link_url = $invoice_link
            link_color = $orange
            link_decoration = "none" }}
        </td>
    </tr>
</table>
