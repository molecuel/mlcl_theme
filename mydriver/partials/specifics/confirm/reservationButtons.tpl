<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
    <tr>
        <td style="padding: 10px 40px;">
            <div>
                {{> atoms/header1
                value = "P.S. Sie k�nnen Ihre Reservierung hier �ndern oder stornieren." }}
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" style="padding-top: 10px;">
            <table cellpadding="0" cellspacing="0" width="280" height="58">
                <tr>
                    <td align="center">
                        {{> atoms/button
                        value = "Reservierung �ndern"
                        link = $links.body.res_rebook
                        color = "white" }}
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="20">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td align="center" style="padding-bottom: 50px;">
            <table cellpadding="0" cellspacing="0" width="280" height="58">
                <tr>
                    <td>
                        {{> atoms/button
                        value = "Reservierung stornieren"
                        link = $links.body.res_cancel
                        color = "white" }}
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
