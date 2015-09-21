
<%@ page import="com.mam.project.Feature" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feature.label', default: 'Feature')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-feature" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-feature" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'feature.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="criticalness" title="${message(code: 'feature.criticalness.label', default: 'Criticalness')}" />
					
						<th><g:message code="feature.securityMentor.label" default="Security Mentor" /></th>
					
						<th><g:message code="feature.initialSecurityReview.label" default="Initial Security Review" /></th>
					
						<th><g:message code="feature.tc.label" default="Tc" /></th>
					
						<g:sortableColumn property="startDate" title="${message(code: 'feature.startDate.label', default: 'Start Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${featureInstanceList}" status="i" var="featureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${featureInstance.id}">${fieldValue(bean: featureInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: featureInstance, field: "criticalness")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "securityMentor")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "initialSecurityReview")}</td>
					
						<td>${fieldValue(bean: featureInstance, field: "tc")}</td>
					
						<td><g:formatDate date="${featureInstance.startDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${featureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
