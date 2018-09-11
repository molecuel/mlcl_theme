[% assign var="car_group" value=lh->gettext("Fahrzeuggruppe") %]

<table cellpadding="0" cellspacing="0" border="0" bgcolor="{{ orange }}">
    <tr>
        <td style="color: {{ "white" }};">
            {{> atoms/blockTitle
                value = $car_group
            }}
        </td>
    </tr>
    <tr>
        <td style="padding: 10px 0 0 0;">
            {{> atoms/header1
                value = car_group_title
            }}
        </td>
    </tr>
    <tr>
        <td>
            {{> molecules/descriptionBlock
                description = "description"
            }}
        </td>
    </tr>
</table>
