<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="view/assets/css/style.css">
    <title>.: DATOS DE FILIACIÓN :.</title>
    <link rel="shortcut icon" href="view/assets/imgs/icono_title.png">
</head>
<body>

     <!--Barra de navegacion-->
    <nav class="navbar navbar-expand-lg" style="background-color: rgb(29, 140, 184);">
        <a class="navbar-brand" style="color: white;" href="Home.html">
            <img src="view/assets/imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
            <strong><i>Servicios Mentales</i></strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a style="color: white;" class="nav-link" href="Home.html">
                    <img src="view/assets/imgs/icono_home.png" width="30px">
                    Inicio
                </a>
            </li>
            <li class="nav-item active">
                <a style="color: white;" class="nav-link" href="DatosPaciente.html">
                    <img src="view/assets/imgs/icono_paciente.png" width="30px">
                    Datos de filiación
                </a>
            </li>
            <li class="nav-item ">
                <a style="color: white;" class="nav-link" href="CitasIndex.html">
                    <img src="view/assets/imgs/icono_citas.png" width="30px">
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
                <a style="color: white;" class="nav-link" href="view/Apoderado/Login.jsp">
                    <img style="filter: invert(120);" src="view/assets/imgs/loguot.png" alt="logo" style=" align-items: center;"
                        height="25px" width="25px">
                    <strong>Salir</strong></a>
            </li>
        </ul>
        </div>
    </nav>

    <!--Contenido-->
    <div style="text-align: center; align-items: center;">
        <br>
        <br>
        <img src="view/assets/imgs/frm_paciente.png" alt="PacienteLogo" width="10%">
        <br>   
        <br>
        <h3 style="color:rgb(29, 140, 184);"><strong>INFORMACIÓN DE PACIENTE</strong></h3>
        <br>
        <br>
    </div>
    <table class="table table-active" style="align-items: center; align-content: center; text-align: center;">
        <tbody>
            <tr>
                <td style="width: 25%;">
                    <label>Nombre(s): </label>
                    <h5>
                        <i>${paciente.getNombres()}</i>
                    </h5>
                </td>
                <td style="width: 25%;">
                    <label>Apellidos: </label>
                    <h5>
                        <i>${paciente.getApellidos()}</i>
                    </h5>
                </td>
                <td style="width: 40%;">
                    <label>DNI: </label>
                    <h5>
                        <i>${paciente.getDni()}</i>
                    </h5>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Sexo: </label>
                    <h5>
                        <i>${paciente.getSexo()}</i>
                    </h5>
                </td>
                <td>
                    <label>Fecha de nacimiento: </label>
                    <h5>
                        <i>${paciente.getFechaDeNacimiento()}</i>
                    </h5>
                </td>
                <td>
                    <label>Dirección: </label>
                    <h5>
                        <i>${paciente.getDireccion()}</i>
                    </h5>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Celular: </label>
                    <h5>
                        <i>${apoderado.getCelular()}</i>
                    </h5>
                </td>
                <td>
                    <label>Celular de emergencia: </label>
                    <h5>
                        <i>${apoderado.getCelularEmergencia()}</i>
                    </h5>
                </td>
                <td>
                    <label>E-Mail de contacto: </label>
                    <h5>
                        <i>${apoderado.getCorreo()}</i>
                    </h5>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Religión: </label>
                    <h5>
                        <i>${paciente.getReligion()}</i>
                    </h5>
                </td>
                <td>
                    <label>Estado civil: </label>
                    <h5>
                        <i>${paciente.getEstadoCivil()}</i>
                    </h5>
                </td>
                <td>
                    <label>Nivel académico: </label>
                    <h5>
                        <i>${paciente.getNivelAcademico()}</i>
                    </h5>
                </td>
            </tr>
        </tbody>
    </table>
    <br>
    <br>
    <center>
        <a class="btn btn-warning" href="view/Apoderado/ModificarDatosDeAfiliacion.jsp"><strong>Actualizar Información</strong></a>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>