[%*
    Button
    ------------------------------------

    Input variables:
        $color                        : "white" / "orange" - This two options are possible. Each of them generates
                                        different output
        $value                        : Button text
        $link                         : Button link

     Internal variable description:
        $button_background_color      : Button background color depending on $color input
        $button_text_color            : Button text color depending on $color input
        $no_border                    : true/false
*%]

<table border="0" cellpadding="0" cellspacing="0" width="280" height="58">
    <tr>
        <td style="background: {{ "button_background_color" }};
            [% if !$no_border %]
                border: solid 2px {{ "button_border_color" }};
            [% /if %]
            width: 280px;"
            width="280" align="center" height="58">
            <a href="{{ link }}"
               style="text-decoration: none; text-align: center; display: block; padding-top: 15px;
               padding-bottom: 15px; width: 280px;">
                <span style="color: {{ "button_text_color" }}; font-size: 18px;
                text-transform: uppercase; letter-spacing: normal;
                {{> atoms/fonts/font_family_roboto }}
                font-weight: bold;">
                    {{ value }}
                </span>
            </a>
        </td>
    </tr>
</table>
