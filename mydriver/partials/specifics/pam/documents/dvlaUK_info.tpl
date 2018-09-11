[% capture name="linkStart" %]
    {{> atoms/linkStart
    link_url = "https://www.sixt.co.uk/driving-licence-changes/"
    link_color = $orange
    link_decoration = "underline"
    %]
[% /capture %]

[% capture name="linkEnd" %][% strip %]
    {{> atoms/linkEnd %]
[% /strip %][% /capture %]

<tr>
    <td style="padding: 20px 40px 0 40px;">
            {{> specifics/pam/infoBlockWithLink
            block_title = "DVLA Check"
            title = "Britische F�hrerscheininhaber: DVLA Code Anleitung"
            content = $lh->gettext("Bitte lesen Sie [_1]wichtige Informationen[_2] �ber den DVLA Code, den Sie bei der Abholung bereithalten m�ssen.",
            $smarty.capture.linkStart,
            $smarty.capture.linkEnd) %]
    </td>
</tr>
<tr>
    <td style="padding: 10px 40px 0 40px;">
        {{> atoms/header1
        value = "Adressnachweis / Kautionsregelung" }}
    </td>
</tr>
<tr>
    <td style="padding: 10px 40px 30px 40px;">
        {{> atoms/standard
        value = $lh->gettext("Pr�fen Sie bitte die [_1]Anmietinformationen[_2] bez�glich der zus�tzlichen Anforderungen zum Wohnsitznachweis f�r britische Staatsb�rger und den generellen Kautions-Vorschriften.",
        $smarty.capture.linkStart,
        $smarty.capture.linkEnd) }}
    </td>
</tr>
