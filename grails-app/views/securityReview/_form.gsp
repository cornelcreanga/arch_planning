<%@ page import="com.mam.project.SecurityReview" %>



<div class="fieldcontain ${hasErrors(bean: securityReviewInstance, field: 'reviewDate', 'error')} required">
	<label for="reviewDate">
		<g:message code="securityReview.reviewDate.label" default="Review Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="reviewDate" precision="day"  value="${securityReviewInstance?.reviewDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: securityReviewInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="securityReview.notes.label" default="Notes" />
		
	</label>
	<g:select name="notes" from="${com.mam.project.Note.list()}" multiple="multiple" optionKey="id" size="5" value="${securityReviewInstance?.notes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: securityReviewInstance, field: 'reviewers', 'error')} ">
	<label for="reviewers">
		<g:message code="securityReview.reviewers.label" default="Reviewers" />
		
	</label>
	<g:select name="reviewers" from="${com.mam.project.Employee.list()}" multiple="multiple" optionKey="id" size="5" value="${securityReviewInstance?.reviewers*.id}" class="many-to-many"/>

</div>

