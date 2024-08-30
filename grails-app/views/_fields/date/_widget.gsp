<h1>${name}</h1>
<g:if test="!required">
    <g:datePicker class="form-select" name="${property}" precision="${type == java.sql.Time ? "minute" : "day"}" noSelection="${["": ""]}" default="none" value="${value}" />
</g:if>
<g:else>
    <g:datePicker class="form-select" name="${property}" precision="${type == java.sql.Time ? "minute" : "day"}" value="${value}" />
</g:else>
<script type="text/javascript">
    document.querySelector('input[name="${property}"]').parentElement.querySelectorAll('select').forEach(s => s.classList.add('w-auto', 'form-select', 'd-inline'))
</script>