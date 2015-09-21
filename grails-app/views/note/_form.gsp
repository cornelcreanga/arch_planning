<%@ page import="com.mam.project.Note" %>



<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="note.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="note" cols="40" rows="5" maxlength="16000" required="" value="${noteInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="note.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${noteInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="note.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${com.mam.project.Employee.list()}" optionKey="id" required="" value="${noteInstance?.employee?.id}" class="many-to-one"/>

</div>

