<%@ page import="com.mam.project.Feature" %>



<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="feature.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${featureInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'criticalness', 'error')} required">
	<label for="criticalness">
		<g:message code="feature.criticalness.label" default="Criticalness" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="criticalness" from="${com.mam.project.Criticalness?.values()}" keys="${com.mam.project.Criticalness.values()*.name()}" required="" value="${featureInstance?.criticalness?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'securityMentor', 'error')} required">
	<label for="securityMentor">
		<g:message code="feature.securityMentor.label" default="Security Mentor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="securityMentor" name="securityMentor.id" from="${com.mam.project.Employee.list()}" optionKey="id" required="" value="${featureInstance?.securityMentor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'initialSecurityReview', 'error')} ">
	<label for="initialSecurityReview">
		<g:message code="feature.initialSecurityReview.label" default="Initial Security Review" />
		
	</label>
	<g:select id="initialSecurityReview" name="initialSecurityReview.id" from="${com.mam.project.SecurityReview.list()}" optionKey="id" value="${featureInstance?.initialSecurityReview?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'tc', 'error')} ">
	<label for="tc">
		<g:message code="feature.tc.label" default="Tc" />
		
	</label>
	<g:select id="tc" name="tc.id" from="${com.mam.project.Tc.list()}" optionKey="id" value="${featureInstance?.tc?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="feature.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${featureInstance?.startDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="feature.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${featureInstance?.endDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'featureStatus', 'error')} required">
	<label for="featureStatus">
		<g:message code="feature.featureStatus.label" default="Feature Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="featureStatus" from="${com.mam.project.FeatureStatus?.values()}" keys="${com.mam.project.FeatureStatus.values()*.name()}" required="" value="${featureInstance?.featureStatus?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'jira', 'error')} ">
	<label for="jira">
		<g:message code="feature.jira.label" default="Jira" />
		
	</label>
	<g:select name="jira" from="${com.mam.project.Link.list()}" multiple="multiple" optionKey="id" size="5" value="${featureInstance?.jira*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="feature.notes.label" default="Notes" />
		
	</label>
	<g:select name="notes" from="${com.mam.project.Note.list()}" multiple="multiple" optionKey="id" size="5" value="${featureInstance?.notes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: featureInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="feature.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.mam.project.Project.list()}" optionKey="id" required="" value="${featureInstance?.project?.id}" class="many-to-one"/>

</div>

