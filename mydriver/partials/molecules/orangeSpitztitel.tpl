<table cellpadding="0" cellspacing="0" border="0" align="left">
    {{#if $block_title }}
    <tr>
        <td style="padding: 0 0 10px 0;">
            <span style="color: {{ orange }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    {{/if}}
    <tr>
        <td>
            {{> molecules/descriptionBlockwH value=title description=$description }}
        </td>
    </tr>
</table>
