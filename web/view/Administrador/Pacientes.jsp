

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<title>.: PACIENTES :.</title>
    <link rel="shortcut icon" href="../assets/imgs/icono_title.png">
</head>
<body>

    <!--NAVBAR Superior-->
    <nav class="sb-topnav navbar navbar-expand navbar-primary bg-primary">
        <a class="navbar-brand" style="color: white;" href="Home.html">
            <img src="../assets/imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
            <i><strong>Servicios Mentales</strong></i>
        </a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <div class="input-group-append">
                    <a style="color: white;" class="nav-link" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Home.jsp">
                        <img style="filter: invert(120);" src="../assets/imgs/loguot.png" alt="logo" style=" align-items: center;" height="25px" width="25px">
                        <strong>Salir</strong></a>
                </div>
            </div>
        </div>
    </nav>
    
        <!-- Navbar Izquierda -->
        <div class="body row">
            <div class="col-sm-2" style="background-color: rgb(19, 94, 124);">
               <nav class="navbar-expand navbar-primary flex-column" aria-label="#" >
                    <div class="col-sm-12" style="text-align: center;">
                        <br>
                        <label style="color: white"> Bienvenido </label>
                        <input type="text" class="form-control" disabled value=${administrador.getUsuario()}>
                        <br>
                    </div>                    
                    <div class="nav-item btn" >
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Home.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_home.png" alt="logo" style=" align-items: center;" height="50px" width="50px">
                            Inicio
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn ">
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Pacientes.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_paciente.png" alt="logo" style=" align-items: center;" height="40px" width="40px">
                            Pacientes
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn ">
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Profesional.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_profesionales.png" alt="logo" style=" align-items: center;" height="40px" width="40px">
                            Profesionales
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn ">
                        <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Trabajador.jsp" style="color: white;">
                            <img src="../assets/imgs/icono_trabajadores.png" alt="logo" style=" align-items: center;" height="40px" width="40px">
                            Trabajadores
                        </a>
                    </div>
                    <br>                        
                    <br>                                                                                
                </nav>
                </div>
                <div class="col-sm-10">
    
                    <!--Contenido-->
                        <div style="text-align: center; align-items: center;">
                            <br>
                            <br>
                            <img src="../assets/imgs/frm_paciente.png" alt="Paciente" width="10%">
                            <br>
                            <br>
                            <h3 style="color:rgb(29, 140, 184);"><strong>PACIENTES</strong></h3>
                        </div>
                        <br>
                        <div class="container" style="align-items: center; align-content: center;">
                            <div style="text-align: left; align-items: center;">
                                <br>                                
                                <input type="text" style="width:20%;text-align: left; align-items: center; " id="search" placeholder="Nombre o DNI">
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                <button type="submit" style="color:black; background-color: rgb(70, 206, 17);" class="btn btn-success"><strong>Buscar</strong></button>                              
                            </div>                            
                        </div>
                        <br>
                        <table class="table table-active" style="align-items: center; align-content: center; text-align: center; padding: 5px;" id="mytable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Apellidos</th>
                                    <th>Edad</th>
                                    <th>DNI</th>
                                    <th>Celular</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Aleister</td>
                                    <td>Crowley</td>
                                    <td>23</td>
                                    <td>9873216</td>
                                    <td>987456123</td>                               
                                    <td>
                                    <a class="btn btn-warning" data-toggle="modal" data-target="#miModal"><strong>Datos de filiación</strong></a>
                                    &nbsp;
                                    &nbsp;
                                    &nbsp;
                                    <a href="VerHistorial.html" class="btn btn-primary"><strong>Historial</strong></a>
                                </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Mark</td>
                                    <td>Zip</td>
                                    <td>43</td>              
                                    <td>74599933</td>
                                    <td>987654123</td>                            
                                    <td>
                                    <a class="btn btn-warning" data-toggle="modal" data-target="#miModal"><strong>Datos de filiación</strong></a>
                                    &nbsp;
                                    &nbsp;
                                    &nbsp;
                                    <a href="VerHistorial.html" class="btn btn-primary"><strong>Historial</strong></a>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Mac</td>
                                    <td>Crowley</td>
                                    <td>32</td>
                                    <td>51753258</td>
                                    <td>963258741</td>                                
                                    <td>
                                    <a class="btn btn-warning" data-toggle="modal" data-target="#miModal"><strong>Datos de filiación</strong></a>
                                    &nbsp;
                                    &nbsp;
                                    &nbsp;
                                    <a href="VerHistorial.html" class="btn btn-primary"><strong>Historial</strong></a>
                                </td>
                                </tr>                               
                            </tbody>                            
                        </table>
                        <center>
                           
                        </center>
                        <br>
                        <br>                                                
                    </div>
                </div>
            </div>
            
            <div class="card bg-primary" >
                <table class="container">
                    <tbody>
                        <tr>
                            <td>
                                <div class="card-body" style="color: white;">
                                    <h5 class="card-title ">Correos</h5>
                                    <p class="card-text ">
                                        <ul>
                                            <li>serviciosmentales@outlook.com</li>
                                            <li>serviciosmentales@gmail.com</li>
                                        </ul>
                                    </p>
                                </div>
                            </td>
                            <td>
                                <div class="card-body" style="color: white;">
                                    <h5 class="card-title ">Teléfonos</h5>
                                    <p class="card-text ">
                                        <ul>
                                            <li>985 245 689</li>
                                            <li>976 987 423</li>
                                        </ul>                                        
                                    </p>
                                </div>
                            </td>
                            <td>
                                <div class="card-body" style="color: white;">
                                    <h5 class="card-title ">Servicios</h5>
                                    <p class="card-text ">
                                        <ul>
                                            <li>Consulta psiquiátrica</li>
                                            <li>Certificado médico</li>
                                        </ul>
                                    </p>
                                </div>
                            </td>
                        </tr> 
                        <tr> 
                        <td></td>                                                  
                            <td>
                                <div class="row card-text">
                                    <div class="col-sm-12">
                                        <i style="color: white; text-align: center;">Copyright © Servicios Mentales 2020</i>
                                    </div>
                                </div>
                            </td>
                        </tr>                           
                    </tbody>
                </table>
            </div>
            
            <script>
                // Write on keyup event of keyword input element
                $(document).ready(function(){
                $("#search").keyup(function(){
                _this = this;
                // Show only matching TR, hide rest of them
                $.each($("#mytable tbody tr"), function() {
                if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                $(this).hide();
                else
                $(this).show();
                });
                });
               });
               </script>

           <!--Modal para datos de filiacion-->
           <div class="modal fade" style="display:" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h6 class="modal-title" id="myModalLabel">Datos de filiación</h6>
                    </div>
                    <div class="modal-body">
                        <table class="card" >
                            <tbody>
                                <tr>
                                    <td>
                                        <label>Nombre(s): </label>
                                        <h6>
                                            <i>Karl</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Apellidos: </label>
                                        <h6>
                                            <i>Kroeneng</i>
                                        </h6>
                                    </td>
                    
                                    <td >
                                        <label>DNI: </label>
                                        <h6>
                                            <i>78459658</i>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Sexo: </label>
                                        <h6>
                                            <i>Masculino</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Fecha de nacimiento: </label>
                                        <h6>
                                            <i>15/05/2000</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Dirección: </label>
                                        <h6>
                                            <i>Cajamarca - Cajamarca - Jr. Santa Ana #666</i>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Celular: </label>
                                        <h6>
                                            <i>985659823</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Celular de emergencia: </label>
                                        <h6>
                                            <i>987412578</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>E-Mail de contacto: </label>
                                        <h6>
                                            <i>victor.chavez@gmail.com</i>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Religión: </label>
                                        <h6>
                                            <i>Satanista</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Estado civil: </label>
                                        <h6>
                                            <i>Viudo</i>
                                        </h6>
                                    </td>
                                    <td>
                                        <label>Nivel académico: </label>
                                        <h6>
                                            <i>Nivel superior culminado</i>
                                        </h6>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
       
                    </div>
                </div>
            </div>
        </div>  

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

</body>
</html>