<tr>
    <td style="padding-bottom: 30px;">
        <table cellpadding="0" cellspacing="0" width="100%" align="center" border="0" bgcolor="{{ light_gray }}">
            <tr>
                <td align="center" valign="bottom" style="padding-top: 50px;">
                    <span style="{{> atoms/fonts/font_family_roboto }}
                    font-size: 14px;
                    font-style: normal; font-stretch: normal; line-height: 1.86; letter-spacing: 4px; color: {{ dark_gray }};">
                        <a style="text-decoration: none !important; text-decoration: none; color: {{ dark_gray }} !important;"
                           href="{{ links.footer.sixt_homepage_link }}">
                            <font style="color: {{ dark_gray }};">{{ links.footer.sixt_homepage_text }}</font>
                        </a>
                    </span>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 0;" align="center">
                    <table cellpadding="0" cellspacing="0" border="0" width="280" height="1" align="center">
                        <tr>
                            <td height="1" width="280" align="center" style="border-collapse: collapse; border-bottom: solid 1px {{ dark_gray }};
                                height: 1px; width: 100%; margin: 0; font-size: 0; line-height: 0;">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top" style="padding-bottom: 10px;" bgcolor="{{ light_gray }}" align="center">
                    <span style="{{> atoms/fonts/font_family_roboto }}
                    font-size: 14px; font-style: normal; font-stretch: normal;
                    line-height: 1.86; letter-spacing: 4px; color: {{ dark_gray }};">
                    {{ hotline1 }}
                    </span>
                </td>
            </tr>
            <tr>
                <td valign="top" style="padding-bottom: 50px;" bgcolor="{{ light_gray }}" align="center">
                    <span style="{{> atoms/fonts/font_family_roboto }}
                        font-size: 12px; font-style: normal; font-stretch: normal;
                        line-height: 2.17; letter-spacing: 0.5px; color: {{ dark_gray }};">
                        {{ hotline_hint }}
                    </span>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td valign="top" style="padding: 0 40px;">
        <table cellspacing="0" cellpadding="0" border="0" style="color: {{ dark_gray }};">
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/standard value=IMPRESSUM }}
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 0">
                    {{> atoms/standard value=imprint }}
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 0;">
                    {{> atoms/standard value=company_reg }}
                </td>
            </tr>
        </table>
    </td>
</tr>

