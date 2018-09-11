<div style="margin: 10px 0px 0px 0px">
    {{> atoms/header2 value=title }}
</div>

{{> atoms/standard value=subtitle }}

<div style="margin: 10px 0px">
    {{> atoms/standard value=description }}
</div>

<div style="margin: 10px 0px">
    [% foreach from=$descriptions item=position %]
        {{> atoms/fatLineLine top=position_0 value=position_1 }}
    [% /foreach %]
</div>

<div style="margin: 10px 0px">
    [% foreach from=$description_lines item=position %]
        {{> atoms/standard value=position }}
        <br>
    [% /foreach %]
</div>
