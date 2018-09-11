<!DOCTYPE html>
<html>

{{> organisms/header title=subject }}

<body>

    <div class="wrapper" style="width: 100%; table-layout: fixed; -webkit-text-size-adjust: 100%;
        -ms-text-size-adjust: 100%;">

        <div class="webkit" style="max-width: 640px; margin: 0 auto;">
            <!--[if (gte mso 9)|(IE)]>
            <table width="640" align="center">
                <tr>
                    <td>
            <![endif]-->
            <table class="outer" align="center"
               style="border-collapse: collapse;mso-table-lspace: 0; mso-table-rspace: 0; margin: 0 auto;
               padding: 0; width: 100%; max-width: 640px; border-spacing: 0; font-size: 0;">
                <tr>
                    <td bgcolor="{{ orange }}" class="full-width-banner" style="font-size: 0;">
                        <table class="header_outer" align="center"
                           style="width: 100%; border-spacing: 0; font-size: 0; border-collapse: collapse;"
                           cellpadding="0" cellspacing="0" border="0">
                            {{> organisms/banner }}
                        </table>
                    </td>
                </tr>

                <!--full width -->
                <tr>
                    <td style="padding: 40px 40px 20px 40px;">
                        {{> molecules/orangeSpitztitel
                        block_title="temp_block_title_pickup"
                        title="text_pickup" }}
                    </td>
                </tr>

                <tr>
                    <td style="padding: 0 40px;">
                        {{> specifics/rentalAgreement/pickupInformation }}
                    </td>
                </tr>

                <tr>
                    <td style="padding: 20px 40px 0 40px;">
                        {{> atoms/standard value="text_previous_damage" }}
                    </td>
                </tr>
                <tr>
                    <td style="padding: 40px 40px 20px 40px;">
                        {{> molecules/orangeSpitztitel
                        block_title="temp_block_title_return"
                        title="text_return" }}
                    </td>
                </tr>
                <tr>
                    <td style="padding: 0 40px 40px 40px;" width="280">
                        {{> molecules/pickupReturnPart
                        title = $pickupreturn_end_title
                        subtitle = $pickupreturn_end_subtitle
                        description = $pickupreturn_end_description
                        descriptions = $pickupreturn_end_descriptions
                        description_lines = $pickupreturn_end_description_lines
                        date_title = $pickupreturn_end_date_title
                        date_description2 = $pickupreturn_end_date_description
                        time_title = $pickupreturn_end_time_title
                        time_description2 = $pickupreturn_end_time_description }}
                    </td>
                </tr>

                <tr bgcolor="{{ orange }}">
                    <td style="padding: 40px;">
                        {{ molecules/hotlines }}
                    </td>
                </tr>

                <tr>
                    <td style="padding: 40px 40px 80px 40px;">
                        {{> molecules/preFooter
                        wish = $temp_wish
                        signature = $temp_signature }}
                    </td>
                </tr>

                <tr>
                    <td>
                        {{ organisms/footer }}
                    </td>
                </tr>


            </table>
            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </div>
    </div>
</body>
</html>
