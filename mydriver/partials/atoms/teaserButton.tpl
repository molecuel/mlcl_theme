[% if !$link %]
    [% assign var=link value="https://www.sixt.com/" %]
[% /if %]

<table cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td align="center" style="background: {{button_color}}; width: 300px;" width="300" height="43">
            <a href="{{ link }}" target="_blank"
               style="padding-top: 12px; padding-bottom: 12px; width: 100%; text-align: center; font-weight: bold;
                       font-size: 16px; {{> atoms/fonts/font_family_roboto }}
                       color: [% $text_color%]; text-decoration: none;
                       -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px;
                       display: inline-block;">
                &nbsp;{{ value }}&nbsp;
            </a>
        </td>
    </tr>
</table>
