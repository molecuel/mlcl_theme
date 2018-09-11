<!--banner2: used in invoice-->

<tr bgcolor="{{ orange }}">
    <td style="padding: 15px 40px;">
        <img src="{{ assets_baseurl }}assets/Logo@2x.png"
             alt="Sixt Logo" style="width: 72.5px; height: 35px;" width="72.5" height="35">
    </td>
    <td style="text-align: right; padding: 0 40px 0 0;">
          {{> atoms/boldConFt
          value = "Reservierungsnummer:" }}
          <span style="color: {{ white }}; font-weight: bold;
                  {{> atoms/fonts/font_family_roboto_condensed }}
              font-size: 14px; font-stretch: condensed; letter-spacing: 0.3px; text-transform: uppercase;">
              {{ reservation_nmb }}
          </span>
    </td>
</tr>

<tr bgcolor="{{ black }}">
    <td  style="padding: 5px 40px; border-spacing: 0;" colspan="2">
        <div style="border-spacing: 0; color: {{ white }};" >
            {{> atoms/boldConFt value="email_subject" }}
        </div>
    </td>
</tr>

<tr bgcolor="{{ orange }}" style="border: 0;">
    <td style="padding: 20px 40px; border: 0;" colspan="2">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td>
                    <span style="color: {{ white }}">
                        {{> atoms/blockTitle value="Salutation & name" }}
                    </span>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 0 0 0">
                    <span style="color: {{ black }}; font-size: 38px; position: relative; left: 0; line-height: 1.25;
                        font-stretch: condensed; {{> atoms/fonts/font_family_roboto_condensed }}
                    text-transform: uppercase; font-weight: 700;">
                    [% $title|@strtoupper %]
                    </span>
                </td>
            </tr>
        </table>
    </td>
</tr>
