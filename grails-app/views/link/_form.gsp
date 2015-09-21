<%@ page import="com.mam.project.Link" %>



<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="link.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="note" required="" value="${linkInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="link.link.label" default="Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="link" required="" value="${linkInstance?.link}"/>

</div>

