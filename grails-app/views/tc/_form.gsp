<%@ page import="com.mam.project.Tc" %>



<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tc.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tcInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="tc.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${tcInstance?.startDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="tc.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${tcInstance?.endDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'review', 'error')} ">
	<label for="review">
		<g:message code="tc.review.label" default="Review" />
		
	</label>
	<g:select id="review" name="review.id" from="${com.mam.project.SecurityReview.list()}" optionKey="id" value="${tcInstance?.review?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'feature', 'error')} required">
	<label for="feature">
		<g:message code="tc.feature.label" default="Feature" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="feature" name="feature.id" from="${com.mam.project.Feature.list()}" optionKey="id" required="" value="${tcInstance?.feature?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'jira', 'error')} ">
	<label for="jira">
		<g:message code="tc.jira.label" default="Jira" />
		
	</label>
	<g:select name="jira" from="${com.mam.project.Link.list()}" multiple="multiple" optionKey="id" size="5" value="${tcInstance?.jira*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="tc.notes.label" default="Notes" />
		
	</label>
	<g:select name="notes" from="${com.mam.project.Note.list()}" multiple="multiple" optionKey="id" size="5" value="${tcInstance?.notes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'reviewers', 'error')} ">
	<label for="reviewers">
		<g:message code="tc.reviewers.label" default="Reviewers" />
		
	</label>
	<g:select name="reviewers" from="${com.mam.project.Employee.list()}" multiple="multiple" optionKey="id" size="5" value="${tcInstance?.reviewers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tcInstance, field: 'tcStatus', 'error')} required">
	<label for="tcStatus">
		<g:message code="tc.tcStatus.label" default="Tc Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tcStatus" from="${com.mam.project.TcStatus?.values()}" keys="${com.mam.project.TcStatus.values()*.name()}" required="" value="${tcInstance?.tcStatus?.name()}" />

</div>

