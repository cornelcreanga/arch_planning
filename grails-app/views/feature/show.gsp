
<%@ page import="com.mam.project.Feature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feature.label', default: 'Feature')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-feature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-feature" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list feature">
			
				<g:if test="${featureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="feature.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${featureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.criticalness}">
				<li class="fieldcontain">
					<span id="criticalness-label" class="property-label"><g:message code="feature.criticalness.label" default="Criticalness" /></span>
					
						<span class="property-value" aria-labelledby="criticalness-label"><g:fieldValue bean="${featureInstance}" field="criticalness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.securityMentor}">
				<li class="fieldcontain">
					<span id="securityMentor-label" class="property-label"><g:message code="feature.securityMentor.label" default="Security Mentor" /></span>
					
						<span class="property-value" aria-labelledby="securityMentor-label"><g:link controller="employee" action="show" id="${featureInstance?.securityMentor?.id}">${featureInstance?.securityMentor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.initialSecurityReview}">
				<li class="fieldcontain">
					<span id="initialSecurityReview-label" class="property-label"><g:message code="feature.initialSecurityReview.label" default="Initial Security Review" /></span>
					
						<span class="property-value" aria-labelledby="initialSecurityReview-label"><g:link controller="securityReview" action="show" id="${featureInstance?.initialSecurityReview?.id}">${featureInstance?.initialSecurityReview?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.tc}">
				<li class="fieldcontain">
					<span id="tc-label" class="property-label"><g:message code="feature.tc.label" default="Tc" /></span>
					
						<span class="property-value" aria-labelledby="tc-label"><g:link controller="tc" action="show" id="${featureInstance?.tc?.id}">${featureInstance?.tc?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="feature.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${featureInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="feature.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${featureInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.featureStatus}">
				<li class="fieldcontain">
					<span id="featureStatus-label" class="property-label"><g:message code="feature.featureStatus.label" default="Feature Status" /></span>
					
						<span class="property-value" aria-labelledby="featureStatus-label"><g:fieldValue bean="${featureInstance}" field="featureStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.jira}">
				<li class="fieldcontain">
					<span id="jira-label" class="property-label"><g:message code="feature.jira.label" default="Jira" /></span>
					
						<g:each in="${featureInstance.jira}" var="j">
						<span class="property-value" aria-labelledby="jira-label"><g:link controller="link" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="feature.notes.label" default="Notes" /></span>
					
						<g:each in="${featureInstance.notes}" var="n">
						<span class="property-value" aria-labelledby="notes-label"><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${featureInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="feature.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${featureInstance?.project?.id}">${featureInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:featureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${featureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
