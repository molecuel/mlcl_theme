[%*
    Link start submodule
    ------------------------------------

    Input variables:
        $link_color                   : "white" / "orange" - This two options are possible. Each of them generates
                                        different output
        $link_value                   : Link value
        $link_decoration              : Link decoration css style
*%]

<a href={{ "link_value" }}>
    <span style="font-weight: bold; text-decoration: {{ "link_decoration" }};
    color: {{ "link_color" }};">
    <span style="font-size: 14px; line-height: 1.14; {{> atoms/fonts/font_family_roboto }}">
