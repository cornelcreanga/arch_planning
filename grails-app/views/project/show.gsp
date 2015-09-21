
<%@ page import="com.mam.project.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="project.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.responsible}">
				<li class="fieldcontain">
					<span id="responsible-label" class="property-label"><g:message code="project.responsible.label" default="Responsible" /></span>
					
						<span class="property-value" aria-labelledby="responsible-label"><g:link controller="employee" action="show" id="${projectInstance?.responsible?.id}">${projectInstance?.responsible?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.criticalness}">
				<li class="fieldcontain">
					<span id="criticalness-label" class="property-label"><g:message code="project.criticalness.label" default="Criticalness" /></span>
					
						<span class="property-value" aria-labelledby="criticalness-label"><g:fieldValue bean="${projectInstance}" field="criticalness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.features}">
				<li class="fieldcontain">
					<span id="features-label" class="property-label"><g:message code="project.features.label" default="Features" /></span>
					
						<g:each in="${projectInstance.features}" var="f">
						<span class="property-value" aria-labelledby="features-label"><g:link controller="feature" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.jira}">
				<li class="fieldcontain">
					<span id="jira-label" class="property-label"><g:message code="project.jira.label" default="Jira" /></span>
					
						<g:each in="${projectInstance.jira}" var="j">
						<span class="property-value" aria-labelledby="jira-label"><g:link controller="link" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.repositories}">
				<li class="fieldcontain">
					<span id="repositories-label" class="property-label"><g:message code="project.repositories.label" default="Repositories" /></span>
					
						<g:each in="${projectInstance.repositories}" var="r">
						<span class="property-value" aria-labelledby="repositories-label"><g:link controller="link" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
