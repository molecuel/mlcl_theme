[% assign var="content"
value=lh->gettext("Bitte beachten Sie unsere [_1]Mietinformationen[_2], um sich �ber unsere Debit-Karten-Richtlinien und Restriktionen zu informieren.",
$smarty.capture.linkStart,
$smarty.capture.linkEnd)
%]

[% capture name="linkStart" %]
    {{> atoms/linkStart
        link_value = "https://www.sixt.com/rental-services/rental-information/"
        link_color = $orange
        link_decoration = "underline"
    %]
[% /capture %]

[% capture name="linkEnd" %][% strip %]
    {{> atoms/linkEnd %]
[% /strip %][% /capture %]

<tr>
    <td style="padding: 20px 40px;">
        {{> specifics/pam/infoBlockWithLink
            block_title = "Informationen zur Debit Karte"
            title = "Anmietung mit einer Debit Karte?"
            content = $content
        %]
    </td>
</tr>
