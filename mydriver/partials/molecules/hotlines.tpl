[% assign var="temp_block_title" value=lh->gettext("Hotlines") }}
[% assign var="temp_title" value=lh->gettext("Haben sich Ihre Pl�ne ge�ndert?") }}
[% assign var="temp_description" value=lh->gettext("Falls Sie Ihre Miete verl�ngern wollen, wenden Sie sich bitte an:") }}
[% assign var="temp_title" value=lh->gettext("Unfall oder Panne") }}
[% assign var="temp_description" value=lh->gettext("Im Fall eines Unfalls oder einer Panne wenden Sie sich bitte an:") }}

<table cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
        <td>
            {{> molecules/whiteSpitztitel
            block_title = $temp_block_title
            value = $temp_title
            description = $temp_description }}
        </td>
    </tr>
    <tr>
        <td align="center">
            {{> molecules/hotline hotline=$hotline1 }}
        </td>
    </tr>
    <tr>
        <td align="center">
            {{> molecules/hotline hotline=$hotline2 }}
        </td>
    </tr>
    <tr>
        <td>
            {{> molecules/hotline hotline=$hotline3 }}
        </td>
    </tr>
    <tr>
        <td style="padding: 20px 0 0 0;">
            {{> molecules/whiteSpitztitel
            value = $temp_title
            description = $temp_description }}
        </td>
    </tr>
    <tr>
        <td align="center">
            {{> molecules/hotline hotline=$hotline4 }}
        </td>
    </tr>
    <tr>
        <td align="center">
            {{> molecules/hotline hotline=$hotline5 }}
        </td>
    </tr>
    <tr>
        <td align="center">
            {{> molecules/hotline hotline=$hotline6 }}
        </td>
    </tr>
</table>
