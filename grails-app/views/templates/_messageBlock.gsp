<g:hasErrors bean="${command}">
    <ul style="color: fuchsia">
        <g:renderErrors bean="${command}" />
    </ul>
</g:hasErrors>
<g:if test="${msg}">
    <ul style="color: fuchsia">
        <li>${msg}</li>
    </ul>
</g:if>
<g:if test="${flash.message}">
    <ul>
        <li>${flash.message}</li>
    </ul>
</g:if>