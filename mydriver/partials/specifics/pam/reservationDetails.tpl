[% if $has_vehicle_model %]
    {{> specifics/pam/vehicleModel %]
[% else %]
    {{> specifics/pam/vehicleGroup %]
[% /if %]

[% if $PAM_pickup_delivery %]
    [% assign var="PAM_pickup_block_title" value=lh->gettext("Zustellservice") %]
[% else %]
    [% assign var="PAM_pickup_block_title" value=lh->gettext("Abholung") %]
    [% capture name="linkPickup" %]
        {{> atoms/fonts/link
        link_url = $links.body.pickup_branch
        link_value = $PAM_pickup_title
        link_decoration = "none"
        link_color = $black
        link_size_big = true %]
    [% /capture %]
    [% assign var="PAM_pickup_title" value=smarty.capture.linkPickup %]
[% /if %]

[% if $PAM_pickup_virtual %]
    [% assign var="PAM_pickup_description" value="" %]
[% /if %]

[% if $PAM_return_collection %]
    [% assign var="PAM_return_block_title" value=lh->gettext("Abholservice") %]
[% else %]
    [% assign var="PAM_return_block_title" value=lh->gettext("R�ckgabe") %]
    [% capture name="linkReturn" %]
        {{> atoms/fonts/link
        link_url = $links.body.return_branch
        link_value = $PAM_return_title
        link_decoration = "none"
        link_color = $black
        link_size_big = true %]
    [% /capture %]
    [% assign var="PAM_return_title" value=smarty.capture.linkReturn %]
[% /if %]

[% if $PAM_return_virtual %]
    [% assign var="PAM_return_description" value="" %]
[% /if %]

<tr>
    <td style="padding: 20px 40px 40px 40px;">
        {{> molecules/pickupReturn
        start_block_title = $PAM_pickup_block_title
        start_title = $PAM_pickup_title
        start_subtitle = $PAM_pickup_subtitle
        start_descriptions = $PAM_pickup_description_hints
        start_description_lines = $PAM_pickup_description

        start_date_title = $PAM_pickup_date_title
        start_date_description = $PAM_pickup_date_description
        start_time_title = $PAM_pickup_time_title
        start_time_description = $PAM_pickup_time_description

        end_block_title = $PAM_return_block_title
        end_title = $PAM_return_title
        end_subtitle = $PAM_return_subtitle
        end_descriptions = $PAM_return_description_hints
        end_description_lines = $PAM_return_description

        end_date_title = $PAM_return_date_title
        end_date_description = $PAM_return_date_description
        end_time_title = $PAM_return_time_title
        end_time_description = $PAM_return_time_description %]
    </td>
</tr>
