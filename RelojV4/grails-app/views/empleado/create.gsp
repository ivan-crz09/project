<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<asset:javascript src="jquery.validate.js"/>
		<script>
		

	        
		$(document).ready(function(){

			$("#cancelarEmpleado").click(function(e){
	            e.preventDefault();
	            //$('#formNuevoEmpleado').trigger("reset");
	            $('#formNuevoEmpleado').trigger("reset");
	            //document.getElementById("formNuevoEmpleado").reset();
	            
	            $("html, body").animate({ scrollTop: 0 }, 600);
	        });

	        $("#formNuevoEmpleado").validate({ 
	           errorClass: "my-error-class",
	           validClass: "my-valid-class",    
	            rules: {
	                nombre: {
	                    required:true
	                },
	                minlength:2
	             
	            },
	            messages: {
	               
	                nombre: {
	                    required: "Por favor inserte un nombre",
	                    minlength: "Debe tener un minimo de 2 carácteres"
	                }
	            },
	            submitHandler: function(){
	                $.ajax({
	                   type: "POST",
	                   url: "consulta/alta.php",
	                   //data: $("#formNuevoCatalogo").serialize(), // serializes the form's elements.
	                   success: function(){
	                                alert('fa');
	                            },
	                   error: function(){
	                            alert("ocurrio un error");
	                          }
	                 });
	            }
	        });

	    });
		</script>
	</head>
	<body>
		<div id="page-wrapper">
			<g:render template="menu"></g:render>
            <div class="container-fluid">
                
                <div class="row">
                    <form class="form-horizontal" id="formNuevoEmpleado" role="form" action="alta/alta.php" method="POST" enctype="multipart/form-data">
                <!-------------------------Empieza formulario------------>
                        <div class="form-horizontal"> 
                          <div class="panel panel-default">
                            <div class="panel-heading panel-primary">Empleado</div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="nombre" class="col-lg-2 control-label">Nombre</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre" autocomplete="off">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label for="apellidoP" class="col-lg-2 control-label">Apellido Paterno</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="apellidoP" placeholder="Apellido Paterno" name="apellidoP" autocomplete="off">
                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label for="apellidoM" class="col-lg-2 control-label">Apellido Materno</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="apellidoM" placeholder="Apellido Materno" name="apellidoM" autocomplete="off">
                                    </div>
                                </div>  
                                <div class="form-group">
                                    <label for="ext" class="col-lg-2 control-label">Telefono</label>
                                    <!--<div class="col-lg-1">
                                        <input type="text" class="form-control" id="ext" placeholder="ext" name="ext" autocomplete="off">
                                    </div>-->
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="telefono" placeholder="Telefono" name="telefono" autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="correo" class="col-lg-2 control-label">Correo</label>
                                    <div class="col-lg-10">
                                        <input type="email" class="form-control" id="correo" placeholder="Correo" name="correo" autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="identificacion" class="col-lg-2 control-label">Tipo</label>
                                    <div class="col-lg-4">
                                        <select class="form-control" name="tipoEmpleado" id="tipoEmpleado">
                                            <option value="0">Empleado Regular</option>
                                            <option value="1" selected="selected">Empleado Comun</option>
                                        </select>
                                    </div>
                                </div> 
                                  
                            </div>                    
                          </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <button class="btn btn-danger btn-block" id="cancelarEmpleado">
                                    Cancelar
                                </button>
                            </div>
                            <div class="col-lg-6">
                                <button class="btn btn-success btn-block" id="submitEmpleado">
                                    Guardar Empleado
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>
	</body>
</html>
