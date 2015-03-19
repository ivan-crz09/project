
<%@ page import="relojv4.Horario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'horario.label', default: 'Horario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-horario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-horario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list horario">
			
				<g:if test="${horarioInstance?.diaSemana}">
				<li class="fieldcontain">
					<span id="diaSemana-label" class="property-label"><g:message code="horario.diaSemana.label" default="Dia Semana" /></span>
					
						<span class="property-value" aria-labelledby="diaSemana-label"><g:fieldValue bean="${horarioInstance}" field="diaSemana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="horario.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${horarioInstance?.empleado?.id}">${horarioInstance?.empleado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="horario.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${horarioInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioInstance?.minuto}">
				<li class="fieldcontain">
					<span id="minuto-label" class="property-label"><g:message code="horario.minuto.label" default="Minuto" /></span>
					
						<span class="property-value" aria-labelledby="minuto-label"><g:fieldValue bean="${horarioInstance}" field="minuto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${horarioInstance?.tipoChecado}">
				<li class="fieldcontain">
					<span id="tipoChecado-label" class="property-label"><g:message code="horario.tipoChecado.label" default="Tipo Checado" /></span>
					
						<span class="property-value" aria-labelledby="tipoChecado-label"><g:fieldValue bean="${horarioInstance}" field="tipoChecado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:horarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${horarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
