<%@ page import="com.mam.project.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="60" required="" value="${projectInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'responsible', 'error')} required">
	<label for="responsible">
		<g:message code="project.responsible.label" default="Responsible" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="responsible" name="responsible.id" from="${com.mam.project.Employee.list()}" optionKey="id" required="" value="${projectInstance?.responsible?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'criticalness', 'error')} required">
	<label for="criticalness">
		<g:message code="project.criticalness.label" default="Criticalness" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="criticalness" from="${com.mam.project.Criticalness?.values()}" keys="${com.mam.project.Criticalness.values()*.name()}" required="" value="${projectInstance?.criticalness?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'features', 'error')} ">
	<label for="features">
		<g:message code="project.features.label" default="Features" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.features?}" var="f">
    <li><g:link controller="feature" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="feature" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'feature.label', default: 'Feature')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'jira', 'error')} ">
	<label for="jira">
		<g:message code="project.jira.label" default="Jira" />
		
	</label>
	<g:select name="jira" from="${com.mam.project.Link.list()}" multiple="multiple" optionKey="id" size="5" value="${projectInstance?.jira*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'repositories', 'error')} ">
	<label for="repositories">
		<g:message code="project.repositories.label" default="Repositories" />
		
	</label>
	<g:select name="repositories" from="${com.mam.project.Link.list()}" multiple="multiple" optionKey="id" size="5" value="${projectInstance?.repositories*.id}" class="many-to-many"/>

</div>

