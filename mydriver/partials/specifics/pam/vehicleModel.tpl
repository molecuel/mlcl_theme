[% assign var="car_group" value=lh->gettext("Garantiertes Modell") %]

<tr>
    <td style="padding: 0 40px 10px 40px;">
        <span style="color: {{ orange }}">
            {{> atoms/blockTitle value=car_group %]
        </span>
    </td>
</tr>
<tr>
    <td style="padding: 0 40px;">
        {{> molecules/descriptionBlockwH
        value = $car_group_example
        description = $car_group_title|cat:" | "|cat:$car_group_code %]
    </td>
</tr>
