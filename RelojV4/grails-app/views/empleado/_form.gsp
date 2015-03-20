<%@ page import="relojv4.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'curp', 'error')} required">
	<label for="curp">
		<g:message code="empleado.curp.label" default="Curp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="curp" required="" value="${empleadoInstance?.curp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'historiales', 'error')} ">
	<label for="historiales">
		<g:message code="empleado.historiales.label" default="Historiales" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.historiales?}" var="h">
    <li><g:link controller="historial" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="historial" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'historial.label', default: 'Historial')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'horarios', 'error')} ">
	<label for="horarios">
		<g:message code="empleado.horarios.label" default="Horarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.horarios?}" var="h">
    <li><g:link controller="horario" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="horario" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'horario.label', default: 'Horario')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${empleadoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="empleado.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${empleadoInstance?.tipo}"/>

</div>

