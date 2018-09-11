<table cellspacing="0" cellpadding="0" border="0" width="280">
    <tr>
        <td align="left" style="padding: 20px 20px 0 0;">
        laskdljalskd
            <span style="color: {{ orange }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    <tr>
        <td align="left" style="padding: [% if $block_title %]10px[% else %]0[% /if %] 20px 0 0;">
            {{> molecules/descriptionBlockwH value=title description=$description }}
        </td>
    </tr>
    <tr>
        <td class="inner" style="padding: 10px 20px 0 0;" align="left">
            {{> molecules/datetime_headline1 }}
        </td>
    </tr>
</table>
