[% if !$prices.show_taxes %]
    [% assign var="taxes_hint"
        value = "zuz�glich gesetzlicher Steuern"
    %]
[% /if %]

[% if !$non_liability_insurance_booked %]
    [% if $liability_insurance_bookable || !$liability_insurance_booked %]
        [% assign var="insurance_hint"
        value = "Bitte beachten Sie, dass Ihre Reservierung keine Haftpflichtversicherung f�r das Fahrzeug beinhaltet."
        %]
    [% /if %]
    [% if $liability_insurance_booked %]
        [% assign var="insurance_hint"
            value = "Bitte beachten Sie, dass Ihre Reservierung nur die gesetzliche Haftpflichtversicherung f�r das Fahrzeug beinhaltet."
        %]
    [% /if %]
[% /if %]

[% assign var="agb_path" value=links.body.terms|replace:"/home/www/hosts/typo3":"" %]

<table cellpadding="0" cellspacing="0" border="0" align="left">
    <tr>
        <td style="padding-bottom: 20px;" align="left">
            {{> molecules/listBlock
            block_title = "Ihre Miete enth�lt"
            var_list = $included_charges
            }}
        </td>
    </tr>
    <tr>
        <td  style="padding-bottom: 20px;">
            {{> molecules/listBlock
            block_title = "Ausgew�hlte Extras"
            var_list = $selected_charges
            }}
        </td>
    </tr>
    <tr>
        <td style="width: 100%;" align="left">
            {{> molecules/invoiceSummation
            block_title = "Voraussichtlicher Mietpreis"
            var_list = $prices.positions
            hint = $insurance_hint
            invoice_taxes_included = $taxes_hint
            total_tag = "Gesamtpreis"
            total_sum = prices.total }}
        </td>
    </tr>
    <tr>
        <td style="padding: 10px 20px 0 0;" align="left">
            [% if $agb_path %]
                {{> atoms/fonts/link
                link_url = $agb_path
                link_value = "AGB"
                link_color = $orange
                link_decoration = "underline" }}
            [% /if %]
        </td>
    </tr>
</table>
