<%@ page import="relojv4.Horario" %>



<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'diaSemana', 'error')} required">
	<label for="diaSemana">
		<g:message code="horario.diaSemana.label" default="Dia Semana" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diaSemana" required="" value="${horarioInstance?.diaSemana}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="horario.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${relojv4.Empleado.list()}" optionKey="id" required="" value="${horarioInstance?.empleado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="horario.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hora" type="number" value="${horarioInstance.hora}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'minuto', 'error')} required">
	<label for="minuto">
		<g:message code="horario.minuto.label" default="Minuto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minuto" type="number" value="${horarioInstance.minuto}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'tipoChecado', 'error')} required">
	<label for="tipoChecado">
		<g:message code="horario.tipoChecado.label" default="Tipo Checado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoChecado" required="" value="${horarioInstance?.tipoChecado}"/>

</div>

