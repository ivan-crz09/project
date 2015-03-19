
<%@ page import="relojv4.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
			
		<script>
  		
		    $(document).ready(function(){
		
		        $('#table').bootstrapTable({
		          url: '<g:createLink controller="Administrador" action="obtenerEmpleados"/>'
		          
		          
		        });
		
		    });
    	</script>
	</head>
	<body>
	
	<div id="page-wrapper">
            <div class="container-fluid">
            
            
				<table id="table" data-height="400" data-side-pagination="server" data-pagination="true" data-page-list="[5, 10, 20, 50, 100, 200]" data-search="true">
				    <thead>
				    	
				    	
					    <tr>
					        <th data-field="id" data-align="right" data-sortable="true">id</th>
					        <th data-field="nombre" data-align="center" data-sortable="true">Nombre</th>
					        <th data-field="curp" data-sortable="true">Curp</th>
					    </tr>
						
						    
				    </thead>
				</table>
				
				
			</div>
	</div>
	
	</body>
</html>
