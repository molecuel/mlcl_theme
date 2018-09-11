<table cellspacing="0" cellpadding="0" border="0">
    <tr>
        <td [% if $description || $descriptions || $description_lines %]style="padding-bottom: 10px;"[% /if %]>
            {{> atoms/header1 value=value }}
            {{> atoms/standard value=subtitle }}
        </td>
    </tr>

    [% if $description %]
    <tr>
        <td [% if $descriptions || $description_lines %]style="padding-bottom: 10px;"[% /if %]>
            {{> atoms/standard value=description }}
        </td>
    </tr>
    [% /if %]

    [% if $descriptions %]
    <tr>
        <td [% if $description_lines %]style="padding: 10px 0;"[% /if %]>
            [% foreach from=$descriptions item=position %]
                {{> atoms/fatLineLine top=position value=position }}
            [% /foreach %]
        </td>
    </tr>
    [% /if %]

    [% if $description_lines %]
    <tr>
        <td class="address">
            [% foreach from=$description_lines item=position %]
                {{> atoms/standard value=position }}
                <br>
            [% /foreach %]
        </td>
    </tr>
    [% /if %]
</table>
