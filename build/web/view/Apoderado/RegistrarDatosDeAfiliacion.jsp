<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>.: ACTUALIZAR PACIENTE :.</title>
        <link rel="shortcut icon" href="../assets/imgs/icono_title.png">
    </head>
    <body>

        <!--Barra de navegacion-->
        <nav class="navbar navbar-expand-lg" style="background-color: rgb(29, 140, 184);">
            <a class="navbar-brand" style="color: white;" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp">
                <img src="../assets/imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
                <i><strong>Servicios Mentales</strong></i>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a style="color: white;" class="nav-link" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp">
                        <img src="../assets/imgs/icono_home.png"  style="width:30px">
                        Inicio
                    </a>
                </li>
                <li class="nav-item active">
                    <a style="color: white;" class="nav-link" name ="datosFiliacion" id="idDatosDeAfiliacion" href="">
                        <img src="../assets/imgs/icono_paciente.png" style="width:30px">
                        Datos de filiación
                    </a>
                </li>
                <li class="nav-item ">
                    <a style="color: white;" class="nav-link" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Cita.jsp">
                        <img src="../assets/imgs/icono_citas.png" style="width:30px">
                        Citas
                    </a>
                </li>
                &nbsp;
                &nbsp;
                &nbsp;
                &nbsp;
                &nbsp;
                &nbsp;
                <li class="nav-item ">
                    <a style="color: white;" class="nav-link" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Login.jsp">
                        <img style="filter: invert(120);" src="../assets/imgs/loguot.png" alt="logo" style=" align-items: center;"
                             height="25px" width="25px">
                        <strong>Salir</strong></a>
                </li>
            </ul>
        </div>
    </nav>
    <div style="text-align: center; align-items: center;">  
        <br>
        <br>
        <img src="../assets/imgs/frm_paciente.png" alt="PacienteLogo" width="10%">
        <br>   
        <br>
        <h3 style="color:rgb(29, 140, 184);"><strong>REGISTRO DE PACIENTE</strong></h3>
        <br>
        <br>
    </div>
    <table class="table table-active" style="align-items: center; align-content: center; text-align: center;">
        <tbody>
        <form action="RegistrarDatosDeAfiliacion" method="post">
            <tr>
                <td>
                    <div class="form-group">
                        <label>Nombre(s): </label>
                        <input required type="text" id="nombreT" class=" form-control" placeholder="Ingrese su nombre">
                        <input id="hdnIdPaciente" type="hidden" />
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Apellidos: </label>
                        <input required type="text" id="apellidosT"  class=" form-control" placeholder="Ingrese su nombre">
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>DNI: </label>
                        <input required type="number" id="dniT" class=" form-control" placeholder="Ingrese su nombre" >
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label>Sexo: </label>
                        <select required id="sexoT" class="form-control">
                            <option>Seleccione su género</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                        </select>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Fecha de nacimiento: </label>
                        <input required type="date" id="fechaNacT" class=" form-control" >
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Dirección: </label>
                        <input required type="text" id="direccionT" class=" form-control" >
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label>Celular: </label>
                        <input required type="tel" id="celularT" class=" form-control" >
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Celular de emergencia: </label>
                        <input required type="tel" id="celEmergenciaT" class=" form-control" >
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>E-Mail de contacto: </label>
                        <input required type="text" id="correoT" class=" form-control" >
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="form-group">
                        <label>Religión: </label>
                        <input required type="text" id="religionT" class=" form-control" >
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Estado civil: </label>
                        <select required id="estadoCivilT"  class="form-control">
                            <option>Seleccione su estado</option>
                            <option value="Soltero">Soltero</option>
                            <option value="Casado">Casado</option>
                            <option value="Viudo">Viudo</option>
                            <option value="Divorciado">Divorciado</option>
                        </select>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label>Nivel académico: </label>
                        <select required id="nivelAcademicoT" class="form-control">
                            <option>Seleccione su nivel</option>
                            <option value="Inicial">Inicial culminada</option>
                            <option value="Primaria">Primaria culminada</option>
                            <option value="Secundaria">Secundaria culminada</option>
                            <option value="Superior">Superior culminada</option>
                            <option value="Sin estudios">Sin estudios</option>
                        </select>
                    </div>
                </td>
            </tr>                            
            </tbody>
    </table>
    <br>
    <br>
<center>
    <button type="submit" id="botonRegistrar" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success"><strong>Registrar</strong></button>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <a class="btn btn-danger" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp"><strong>Cancelar</strong></a>
</form>
</center>
<br>
<br>

<!--Footer-->
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


<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>


<script src="../assets/scripts/Apoderado.js" type="text/javascript"></script>
<script src="../assets/scripts/Paciente.js" type="text/javascript"></script>
</body>
</html>