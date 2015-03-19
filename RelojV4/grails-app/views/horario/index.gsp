
<%@ page import="relojv4.Horario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'horario.label', default: 'Horario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-horario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-horario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="diaSemana" title="${message(code: 'horario.diaSemana.label', default: 'Dia Semana')}" />
					
						<th><g:message code="horario.empleado.label" default="Empleado" /></th>
					
						<g:sortableColumn property="hora" title="${message(code: 'horario.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="minuto" title="${message(code: 'horario.minuto.label', default: 'Minuto')}" />
					
						<g:sortableColumn property="tipoChecado" title="${message(code: 'horario.tipoChecado.label', default: 'Tipo Checado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${horarioInstanceList}" status="i" var="horarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${horarioInstance.id}">${fieldValue(bean: horarioInstance, field: "diaSemana")}</g:link></td>
					
						<td>${fieldValue(bean: horarioInstance, field: "empleado")}</td>
					
						<td>${fieldValue(bean: horarioInstance, field: "hora")}</td>
					
						<td>${fieldValue(bean: horarioInstance, field: "minuto")}</td>
					
						<td>${fieldValue(bean: horarioInstance, field: "tipoChecado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${horarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
