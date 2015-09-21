
<%@ page import="com.mam.project.Tc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tc.label', default: 'Tc')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tc" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tc">
			
				<g:if test="${tcInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tc.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tcInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="tc.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${tcInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="tc.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${tcInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.review}">
				<li class="fieldcontain">
					<span id="review-label" class="property-label"><g:message code="tc.review.label" default="Review" /></span>
					
						<span class="property-value" aria-labelledby="review-label"><g:link controller="securityReview" action="show" id="${tcInstance?.review?.id}">${tcInstance?.review?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.feature}">
				<li class="fieldcontain">
					<span id="feature-label" class="property-label"><g:message code="tc.feature.label" default="Feature" /></span>
					
						<span class="property-value" aria-labelledby="feature-label"><g:link controller="feature" action="show" id="${tcInstance?.feature?.id}">${tcInstance?.feature?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.jira}">
				<li class="fieldcontain">
					<span id="jira-label" class="property-label"><g:message code="tc.jira.label" default="Jira" /></span>
					
						<g:each in="${tcInstance.jira}" var="j">
						<span class="property-value" aria-labelledby="jira-label"><g:link controller="link" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="tc.notes.label" default="Notes" /></span>
					
						<g:each in="${tcInstance.notes}" var="n">
						<span class="property-value" aria-labelledby="notes-label"><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.reviewers}">
				<li class="fieldcontain">
					<span id="reviewers-label" class="property-label"><g:message code="tc.reviewers.label" default="Reviewers" /></span>
					
						<g:each in="${tcInstance.reviewers}" var="r">
						<span class="property-value" aria-labelledby="reviewers-label"><g:link controller="employee" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${tcInstance?.tcStatus}">
				<li class="fieldcontain">
					<span id="tcStatus-label" class="property-label"><g:message code="tc.tcStatus.label" default="Tc Status" /></span>
					
						<span class="property-value" aria-labelledby="tcStatus-label"><g:fieldValue bean="${tcInstance}" field="tcStatus"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tcInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tcInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
