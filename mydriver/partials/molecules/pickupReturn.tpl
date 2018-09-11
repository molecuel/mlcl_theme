<!--[if (gte mso 9)|(IE)]>
<table cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
    <tr>
        <td width="50%" valign="top">
<![endif]-->

<div class="column1"
     style="width: 100%; max-width: 280px; display: inline-block; vertical-align: top;">
     aufauf
    {{> molecules/pickupReturnPart
    block_title = "pickup.title"
    title = pickup.location.start
    subtitle = $start_subtitle
    description = $start_description
    descriptions = $start_descriptions
    description_lines = $start_description_lines
    date_title = $start_date_title
    date_description2 = $start_date_description
    time_title = "7:00"
    time_description2 = $start_time_description }}
</div>

<!--[if (gte mso 9)|(IE)]>
</td><td width="50%" valign="top">
<![endif]-->

<div class="column2"
     style="width: 100%; max-width: 280px; display: inline-block; vertical-align: top;">
    {{> molecules/pickupReturnPart
    block_title = $end_block_title
    title = $end_title
    subtitle = $end_subtitle
    description = $end_description
    descriptions = $end_descriptions
    description_lines = $end_description_lines
    date_title = $end_date_title
    date_description2 = $end_date_description
    time_title = $end_time_title
    time_description2 = $end_time_description }}
</div>

<!--[if (gte mso 9)|(IE)]>
</td>
</tr>
</table>
<![endif]-->
