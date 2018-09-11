<table class="contentLeft" cellpadding="0" cellspacing="0" bgcolor="{{ orange }}" align="left"
       style="background-color: {{ orange }};">
    <tr>
        <td align="left" style="padding: 30px 20px 0 20px;" bgcolor="{{ orange }}">
            {{#if has_vehicle_model}}
                {{> specifics/confirm/vehicleModel }}
            {{else}}
                {{> specifics/confirm/vehicleGroup }}
            {{/if}}
        </td>
    </tr>
    <tr>
        <td align="left" style="padding: 0 20px;" bgcolor="{{ orange }}">
          PICKUP RETURN:
            {{> specifics/confirm/pickupReturn
            location = booking.selectedPickup
            date_title = $CO_pickup_date_title
            date_description = $CO_pickup_date_description
            time_title = $CO_pickup_time_title
            time_description = $CO_pickup_time_description
            }}
        </td>
    </tr>
    <tr>
        <td align="left" style="padding: 0 20px;" bgcolor="{{ orange }}">
            {{> specifics/confirm/pickupReturn
            location_block_title = $CO_return_block_title
            location_title = $CO_return_title
            location_url = $CO_return_url
            location_subtitle = $CO_return_subtitle
            service_descriptions = $CO_return_description_hints
            location_description = $CO_return_description

            date_title = $CO_return_date_title
            date_description = $CO_return_date_description
            time_title = $CO_return_time_title
            time_description = $CO_return_time_description
            }}
        </td>
    </tr>
    <tr>
        <td align="left" style="padding: 20px 20px 30px 20px" bgcolor="{{ orange }}">
            {{> molecules/whiteSpitztitel
            block_title = "Reservierungsnummer"
            value = "reservation_nmb"
            }}
        </td>
    </tr>
</table>
