<table cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td style="padding-bottom: 10px;">
            <span style="color: {{ orange }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    <tr>
        <td>
            [% foreach from=$var_list item=selected %]
                {{> atoms/ListItemCheckmark value=selected }}
            [% /foreach %]
        </td>
    </tr>
</table>
