[%*
    Link submodule
    ------------------------------------

    Input variables:
    $link_color                   : "white" / "orange" - This two options are possible. Each of them generates
    different output
    $link_url                     : Link url
    $link_value                   : Link value
    $link_decoration              : Link decoration css style
    $link_size_big                : Link as header
*%]

<a href="{{ "link_url" }}" style="font-weight: bold; text-decoration: {{ "link_decoration" }} !important;
    text-decoration: {{ "link_decoration" }}; color: {{ "link_color" }};">
    [% if $link_size_big %]
        {{> atoms/header1 value=link_value }}
    [% else %]
        {{> atoms/standard value=link_value }}
    [% /if %]
</a>
