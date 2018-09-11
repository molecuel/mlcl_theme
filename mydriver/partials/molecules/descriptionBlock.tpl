{{> atoms/standard value=subtitle }}

<table cellpadding="0" cellspacing="0" border="0" bgcolor="{{ orange }}">
    {{#if description }}
        <tr>
            <td style="padding: 10px 0 0 0;">
                {{> atoms/standard value=description }}
            </td>
        </tr>
    {{/if}}
    {{#if descriptions }}
        <tr>
            <td style="padding: 10px 0 0 0;">
                <!-- tuples: first line is fat, second normal -->
                {{#each descriptions}}
                    {{> atoms/fatLineLine top=[0] value=[1] }}
                    <br/>
                {{/each}}
            </td>
        </tr>
    {{/if}}
    {{#if description_lines}}
        <tr>
            <td style="padding: 10px 0;">
                <div style="text-decoration: none !important; color: inherit !important;">
                    {{#each description_lines}}
                        {{> atoms/standard value=this }}
                        <br>
                    {{/each}}
                </div>
            </td>
        </tr>
    {{/if}}
</table>
