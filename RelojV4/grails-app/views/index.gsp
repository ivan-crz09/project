<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Reloj Checador</title>
		
	</head>
	<body>
	<!-- yisus cometela -->
		  <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Reloj Checador 
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Checador - Ingrese su curp
                            </li>
                        </ol>
                    </div>
                </div>
               
               
               

              
                   
                    <div class="col-lg-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> Registrar</h3>
                            </div>
                            <div class="panel-body">
                                <sec:ifNotLoggedIn>
										
										
												<g:form url="[action:'insertarHorario',controller:'Administrador']"  method='POST' id='formulario' class='cssform'>
													           
													
													<p>
														<label>RFC:</label>
														<input type='text' class='text_' name="Nombre" id='username'/>
													</p>
										
													<p>
														<input class="btn btn-primary" type='submit' id="submit" value="Registrar"/>
													</p>
												</g:form>

								</sec:ifNotLoggedIn>
                                
                            </div>
                        </div>
                    </div>
                    
                    
            

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
	</body>
</html>
