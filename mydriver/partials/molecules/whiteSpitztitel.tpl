<table cellpadding="0" cellspacing="0" border="0">
    {{#if block_title }}
    <tr>
        <td>
            <span style="color: {{ $white }};">
                {{> atoms/blockTitle value=block_title }}
            </span>
        </td>
    </tr>
    {{/if }}
    {{#if value }}
    <tr>
        <td {{#if block_title }}style="padding: 10px 0 0 0;"{{/if }}>
            {{> atoms/header1 value=value }}
        </td>
    </tr>
    {{/if }}
    {{#if subtitle }}
    <tr>
        <td>
            {{> atoms/standard value=subtitle }}
        </td>
    </tr>
    {{/if }}
    {{#if description }}
    <tr>
        <td style="padding: 10px 0;">
            {{> atoms/standard value=description }}
        </td>
    </tr>
    {{/if }}
    {{#if descriptionss }}
    <tr>
        <td style="padding: 10px 0;">
            {{#each from=$descriptions item=position }}
                {{> atoms/fatLineLine top=position_0 value=position_1 }}
            {{/each }}
        </td>
    </tr>
    {{/if }}
    {{#if position }}
    {{#each from=$description_lines item=position }}
    <tr>
        <td style="padding: 10px 0;">
            {{> atoms/standard value=position }}
        </td>
    </tr>
    {{/each }}
    {{/if }}
</table>
