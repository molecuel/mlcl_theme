[% if $block_title %]
    <tr>
        <td style="color: {{ orange }};">
            {{> atoms/blockTitle value=block_title }}
        </td>
    </tr>
[% /if %]

<tr>
    <td style="padding: 10px 0;">
        {{> atoms/header1 value=title }}
    </td>
</tr>
[% foreach item=para from=$content %]
<tr>
    <td style="padding-bottom: 10px;">
        {{> atoms/standard value=para }}
    </td>
</tr>
[% /foreach %]
