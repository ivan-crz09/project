
<%@ page import="relojv4.Historial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historial.label', default: 'Historial')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historial" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historial">
			
				<g:if test="${historialInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="historial.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${historialInstance?.empleado?.id}">${historialInstance?.empleado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.faltas}">
				<li class="fieldcontain">
					<span id="faltas-label" class="property-label"><g:message code="historial.faltas.label" default="Faltas" /></span>
					
						<span class="property-value" aria-labelledby="faltas-label"><g:fieldValue bean="${historialInstance}" field="faltas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="historial.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${historialInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="historial.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${historialInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.minuto}">
				<li class="fieldcontain">
					<span id="minuto-label" class="property-label"><g:message code="historial.minuto.label" default="Minuto" /></span>
					
						<span class="property-value" aria-labelledby="minuto-label"><g:fieldValue bean="${historialInstance}" field="minuto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.retardos}">
				<li class="fieldcontain">
					<span id="retardos-label" class="property-label"><g:message code="historial.retardos.label" default="Retardos" /></span>
					
						<span class="property-value" aria-labelledby="retardos-label"><g:fieldValue bean="${historialInstance}" field="retardos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historialInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="historial.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${historialInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:historialInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${historialInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
