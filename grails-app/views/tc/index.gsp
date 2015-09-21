
<%@ page import="com.mam.project.Tc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tc.label', default: 'Tc')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tc" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'tc.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'tc.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'tc.endDate.label', default: 'End Date')}" />
					
						<th><g:message code="tc.review.label" default="Review" /></th>
					
						<th><g:message code="tc.feature.label" default="Feature" /></th>
					
						<g:sortableColumn property="tcStatus" title="${message(code: 'tc.tcStatus.label', default: 'Tc Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tcInstanceList}" status="i" var="tcInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tcInstance.id}">${fieldValue(bean: tcInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${tcInstance.startDate}" /></td>
					
						<td><g:formatDate date="${tcInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: tcInstance, field: "review")}</td>
					
						<td>${fieldValue(bean: tcInstance, field: "feature")}</td>
					
						<td>${fieldValue(bean: tcInstance, field: "tcStatus")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tcInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
