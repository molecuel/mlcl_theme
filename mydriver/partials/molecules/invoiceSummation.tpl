<table cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td align="left" style="color: {{ orange }}; padding-bottom: 10px;">
            {{> atoms/blockTitle value = block_title }}
        </td>
    </tr>
    [% if $var_list %]
    <tr>
        <td align="left">
            <table align="center" cellpadding="0" cellspacing="0" width="100%">
                [% foreach from=$var_list item = position %]
                <tr>
                    <td align="left" width="211">
                        {{> atoms/standard value=position_0 }}
                    </td>
                    <td align="right" width="83">
                        {{> atoms/standard value=position_1 }}
                    </td>
                </tr>
                [% /foreach %]
            </table>
        </td>
    </tr>
    <tr>
        <td style="padding: 10px 0;">
            <hr color="{{ black }}">
        </td>
    </tr>
    [% /if %]
    <tr>
        <td align="left">
            <!-- summation row -->

            <!--[if (gte mso 9)|(IE)]>
            <table cellpadding="0" cellspacing="0" width="200" style="border-collapse: collapse;" width="100%">
                <tr>
                    <td valign="top" width="50%">
            <![endif]-->

            <div style="max-width: 260px; display: inline-block; vertical-align: top;">
                {{> atoms/header1 value = "total_tag" }}
            </div>

            <!--[if (gte mso 9)|(IE)]>
            </td><td valign="top" width="50%">
            <![endif]-->

            <div style="max-width: 260px; display: inline-block; vertical-align: top; float: right;">
                {{> atoms/header1 value = "total_sum" }}
            </div>

            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->

        </td>
    </tr>
    [% if $invoice_taxes_included %]
    <tr align="left">
        <td style="padding-top: 5px;">
            {{> atoms/standard value = "invoice_taxes_included" }}
        </td>
    </tr>
    [% /if %]
    [% if $hint %]
    <tr align="left">
        <td style="padding: 10px 0;">
            {{> atoms/standard value = "hint" }}
        </td>
    </tr>
    [% /if %]
</table>
