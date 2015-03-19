<%@ page import="relojv4.Historial" %>



<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="historial.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${relojv4.Empleado.list()}" optionKey="id" required="" value="${historialInstance?.empleado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'faltas', 'error')} required">
	<label for="faltas">
		<g:message code="historial.faltas.label" default="Faltas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="faltas" type="number" value="${historialInstance.faltas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="historial.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${historialInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="historial.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hora" type="number" value="${historialInstance.hora}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'minuto', 'error')} required">
	<label for="minuto">
		<g:message code="historial.minuto.label" default="Minuto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minuto" type="number" value="${historialInstance.minuto}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'retardos', 'error')} required">
	<label for="retardos">
		<g:message code="historial.retardos.label" default="Retardos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="retardos" type="number" value="${historialInstance.retardos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: historialInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="historial.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${historialInstance?.tipo}"/>

</div>

