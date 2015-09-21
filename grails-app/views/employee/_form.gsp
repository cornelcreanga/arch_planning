<%@ page import="com.mam.project.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${employeeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="employee.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="20" required="" value="${employeeInstance?.code}"/>

</div>

