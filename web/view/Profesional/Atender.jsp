

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
<title>.: REGISTRAR HISTORIA CLÍNICA :.</title>
<link rel="shortcut icon" href="../imgs/icono_title.png">
</head>
<body>

    <!--NAVBAR Superior-->    
    <nav class="sb-topnav navbar navbar-expand navbar-primary bg-primary">
        <a class="navbar-brand" style="color: white;" href="Home.html">
            <img src="../imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
            <i><strong>Servicios Mentales</strong></i>
        </a>
        <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <div class="input-group-append">
                    <a style="color: white;" class="nav-link" href="Login.jsp">
                        <img style="filter: invert(120);" src="../imgs/loguot.png" alt="logo"
                            style=" align-items: center;" height="25px" width="25px">
                        <strong>Salir</strong></a>
                </div>
            </div>
        </div>
    </nav>
    
        <!-- Navbar Izquierda -->       
        <div class="body row">
            <div class="col-sm-2" style="background-color: rgb(19, 94, 124);">
                <nav class="navbar-expand navbar-primary flex-column" aria-label="#">
                    <div class="col-sm-12" style="text-align: center;">
                        <br>
                        <label style="color: white"> Bienvenido </label>
                        <input type="text" class="form-control" value="Usuario" disabled>
                        <br>
                    </div>
                    <div class="nav-item btn">
                        <a class="nav-link active" href="Home.html" style="color: white;">
                            <img src="../imgs/icono_home.png" alt="logo" style=" align-items: center;" height="50px"
                                width="50px">
                            Inicio
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn ">
                        <a class="nav-link active" href="PacientesIndex.html" style="color: white;">
                            <img src="../imgs/icono_paciente.png" alt="logo" style=" align-items: center;" height="40px"
                                width="40px">
                            Pacientes
                        </a>
                    </div>
                    <br>
                    <div class="nav-item btn">
                        <a class="nav-link active" href="CitasIndex.html" style="color: white;">
                            <img src="../imgs/icono_citas.png" alt="logo" style=" align-items: center;" height="50px"
                                width="50px">
                            Citas
                        </a>
                    </div>    
                </nav>
            </div>
                <div class="col-sm-10">
                    <div class="container" style="align-items: center; align-content: center;">
                        <div style="text-align: center; align-items: center;">
                            <br>
                            <br>
                            <img src="../imgs/frm_historia.png" alt="Historia" width="15%">
                            <br>
                            <br>
                            <h3 style="color:rgb(29, 140, 184);"><strong>ATENDER CITA</strong></h3>
                        </div>
                        <br>
                        <br>
                        <hr>
                    <!--Contenido-->                    
                    <div class="row">
                        <div class="col-sm-5">
                            <label>Paciente:
                                <h5>
                                    <strong>${paciente.getNombres()}</strong>
                                </h5>
                            </label>
                        </div>
                        <div class="col-sm-2">
                            <label>Sexo:
                                <h5>
                                    <strong>${paciente.getSexo()}</strong>
                                </h5>
                            </label>

                        </div>
                        <div class="col-sm-2">
                            <label>Edad:
                                <h5>
                                    <strong>${paciente.getFechaDeNacimiento()}</strong>
                                </h5>
                            </label>
                        </div>
                        <div class="col-sm-3">
                            <label>DNI:
                                <h5>
                                    <strong>${paciente.getDni()}</strong>
                                </h5>
                            </label>
                        </div>
                    </div>
                    <hr>
                    <br>
                    <form>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Motivo de la cita:</strong>
                                <textarea required id="idMotivo" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>                    
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Descripción del caso:</strong>
                                <textarea required id="idDescripcion" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Examen:</strong>
                                <textarea required id="idExamen" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Diagnóstico:</strong>
                                <textarea required id="idDiagnostico" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Tratamiento:</strong>
                                <textarea required id="idTratamiento" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12">
                            <label><strong>Observación:</strong>
                                <textarea  required id="idObservacion" class="form-control" name="" rows="3" cols="200"></textarea>
                            </label>
                        </div>
                    </div>
                    <br>
                </div>
                <br>
                <br>
                <center>                    
                    <a class="btn btn-warning" data-toggle="modal" data-target="#miModal"><strong>Datos de filiación</strong></a>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <button type="submit" id="buttonGuardar" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success"><strong>Guardar</strong></button>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <a class="btn btn-danger" href="CitasIndex.html"><strong>Cancelar</strong></a>
                </center>
            </form>
                <br>
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
            
       <!--Modal para datos de filiacion-->
       <div class="modal fade" style="display: " id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                        <i>${paciente.getNombres()}</i>
                                    </h6>
                                </td>
                                <td>
                                    <label>Apellidos: </label>
                                    <h6>
                                        <i>${paciente.getApellidos()}</i>
                                    </h6>
                                </td>
                
                                <td >
                                    <label>DNI: </label>
                                    <h6>
                                        <i>${paciente.getApellidos()}</i>
                                    </h6>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Sexo: </label>
                                    <h6>
                                        <i>${paciente.getApellidos()}</i>
                                    </h6>
                                </td>
                                <td>
                                    <label>Fecha de nacimiento: </label>
                                    <h6>
                                        <i>${paciente.getApellidos()}</i>
                                    </h6>
                                </td>
                                <td>
                                    <label>Dirección: </label>
                                    <h6>
                                        <i>${paciente.getApellidos()}</i>
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

    <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>

    <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>
<script src="../assets/scripts/Cita.js" type="text/javascript"></script>
<script src="../assets/scripts/Historia.js" type="text/javascript"></script>
</body>
</html>