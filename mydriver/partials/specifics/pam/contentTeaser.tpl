[% if !$PAM_header_teaser_filled && $PAM_shuttle_description %]
    {{> specifics/pam/contentTeaser_generalInfo
        block_title = "Wichtige Stationsinformationen"
        title = "Shuttle Informationen"
        text1 = $shuttle_info_text1
        text2_bold = ""
        text3 = $shuttle_info_text2_bold
        link = $shuttle_info_link
        text4 = "Oder hier direkt zum Download unserer Tracker-App:"
    %]
[% /if %]

[% if $PAM_pickup_meet_greet %]
    [% if !$PAM_header_teaser_filled %]
        [% assign var="PAM_header_teaser_filled" value=true %]

        {{> specifics/pam/contentTeaser_meetGreet
            block_title = ""
            color = "orange"
        %]
    [% else %]
        {{> specifics/pam/contentTeaser_meetGreet
            block_title = "Wichtige Stationsinformationen"
            color = "white"
        %]
    [% /if %]
[% elseif $PAM_pickup_virtual %]
    [% if !$PAM_header_teaser_filled %]
        [% assign var="PAM_header_teaser_filled" value=true %]

        {{> specifics/pam/contentTeaser_virtual
            block_title = ""
            color = "orange"
        %]
    [% else %]
        {{> specifics/pam/contentTeaser_virtual
            block_title = "Wichtige Stationsinformationen"
            color = "white"
        %]
    [% /if %]
[% /if %]

[% if !$is_data_complete && $show_oci_invitation %]

    [% if !$PAM_header_teaser_filled %]
        [% assign var="PAM_header_teaser_filled" value=true %]

        {{> specifics/pam/contentTeaser_oci_invite
            color="orange"
        %]
    [% else %]
        {{> specifics/pam/contentTeaser_oci_invite
            color="white"
        %]
    [% /if %]

[% elseif $is_data_complete && $qr_code && !$PAM_pickup_delivery %]

    [% if !$PAM_header_teaser_filled %]
        [% assign var="PAM_header_teaser_filled" value=true %]

        {{> specifics/pam/contentTeaser_oci_barcode
            color = "orange"
        %]
    [% else %]
        {{> specifics/pam/contentTeaser_oci_barcode
            color = "white"
        %]
    [% /if %]

[% elseif $is_data_complete %]

    [% assign var="teaserText"
        value = "Ihre Angaben sind vollst�ndig. Sie sparen nun wertvolle Zeit am Counter."
    %]
    [% if $PAM_pickup_delivery || $PAM_pickup_meet_greet %]
        [% assign var="teaserText"
            value = "Ihre Angaben sind vollst�ndig. Sie sparen nun wertvolle Zeit."
        %]
    [% /if %]

    [% if !$PAM_header_teaser_filled %]
        [% assign var="PAM_header_teaser_filled" value=true %]

        {{> specifics/pam/contentTeaser_generalInfo
            block_title = "Online Checkin"
            title = "Ihre Angaben sind vollst�ndig"
            text1 = $teaserText
            text2_bold = "Sparen Sie auch Papier: Es ist nicht notwendig diese Mail auszudrucken. Alle ben�tigten Informationen befinden sich bei Ankunft bereits an der Station."
            text3 = ""
            text4 = "Mit unserer Sixt App k�nnen Sie Ihr Wunschfahrzeug 30 Minuten vor Mietbeginn aus den zur Verf�gung stehenden Fahrzeugen selbst w�hlen."
            color = "orange"
        %]
    [% else %]
        {{> specifics/pam/contentTeaser_generalInfo
            block_title = "Online Checkin"
            title = "Ihre Angaben sind vollst�ndig"
            text1 = $teaserText
            text2_bold = "Sparen Sie auch Papier: Es ist nicht notwendig diese Mail auszudrucken. Alle ben�tigten Informationen befinden sich bei Ankunft bereits an der Station."
            text3 = ""
            text4 = "Mit unserer Sixt App k�nnen Sie Ihr Wunschfahrzeug 30 Minuten vor Mietbeginn aus den zur Verf�gung stehenden Fahrzeugen selbst w�hlen."
            color = "white"
        %]
    [% /if %]

[% /if %]

[% if $is_first_time_renter %]
    {{> specifics/pam/documents/firstTimeRenters %]
[% else %]
    {{> specifics/pam/documents/general %]
[% /if %]

[% if $show_debit_card_info %]
    {{> specifics/pam/documents/debitCard_info %]
[% /if %]

[% if $show_dvla_info %]
    {{> specifics/pam/documents/dvlaUK_info %]
[% /if %]

[% if $need_reservation_details %]
    {{> specifics/pam/reservationDetails %]
[% /if %]
