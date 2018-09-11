<table cellpadding="0" cellspacing="0" border="0" align="left" bgcolor="{{ orange }}">
    <tr>
        <td style="padding: 20px 0 10px 0; color: {{ "white" }};">
            {{> atoms/blockTitle
            value = "Pickup Location"
            }}
        </td>
    </tr>
    <tr>
        <td>
            {{#if location.url }}
                <a class="pickupReturn" href="{{ "location_url" }}"
                   style="font-weight: bold; text-decoration: none !important; text-decoration: none;
                   color: {{ "black" }}">
                    {{> atoms/header1
                    value = location.label
                    }}
                </a>
            {{else}}
                {{> atoms/header1
                value = location.label
                }}
            {{/if}}
        </td>
    </tr>
    <tr>
        <td>
            {{> molecules/descriptionBlock
            subtitle = $location_subtitle
            descriptions = location.address
            description_lines = location.address
            }}
        </td>
    </tr>
    <tr>
        <td>
            {{> molecules/datetime_headline1
            date_title = $date_title
            date_description2 = $date_description
            time_title = $time_title
            time_description2 = $time_description
            }}
        </td>
    </tr>
</table>





