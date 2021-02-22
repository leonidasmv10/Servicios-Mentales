
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <title>.: BIENVENIDO :.</title>
    <link rel="shortcut icon" href="../imgs/icono_title.png">
</head>
<body>

    <!--NAVBAR Superior-->
    <nav class="sb-topnav navbar navbar-expand navbar-primary bg-primary">
        <a class="navbar-brand" style="color: white;" href="Home.html">
            <img src="../imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
            <i><strong>Servicios Mentales</strong></i>
        </a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i
                class="fas fa-bars"></i></button>
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
    <div class="row">
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
                    <a class="nav-link active" href="http://localhost:8080/Servicios_Mentales/view/Profesional/Cita.jsp" style="color: white;">
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
                    <div class="container" style="align-items: center; align-content: center;">
                        <div style="text-align: center; align-items: center;">
                            <br>
                            <br>
                            <h3 style="color:rgb(29, 140, 184);"><strong>ANUNCIOS</strong></h3>
                        </div>
                        <br>
                        <div style="align-items: center; align-self: center; align-content: center; text-align: center;">
                            <hr>
                            <div class="row">
                                 <div class="col-sm-1">
                                    <h6><strong>#</strong></h6>
                                </div>
                                <div class="col-sm-2">
                                    <h6><strong>Título</strong></h6>
                                </div>
                                <div class="col-sm-7">
                                    <h6><strong>Descripción</strong></h6>
                                </div>
                                <div class="col-sm-2">
                                </div>
                            </div>
                            <hr>
                            <br>
                            <div class="row">
                                <div class="col-sm-1">
                                    <h7>1</h7>
                                </div>
                                <div class="col-sm-2">
                                    <h7>Anuncio 1</h7>
                                </div>
                                <div class="col-sm-7">
                                    <h7>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium quam rem dolor
                                        vel sint nobis...
                                    </h7>
                                </div>
                                <div class="col-sm-2">
                                    <a href="VerAnuncio.html" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success"><strong>Detalle</strong></a>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-1">
                                    <h7>2</h7>
                                </div>
                                <div class="col-sm-2">
                                    <h7>Anuncio 2</h7>
                                </div>
                                <div class="col-sm-7">
                                    <h7>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium quam rem dolor
                                        vel sint nobis...
                                    </h7>
                                </div>
                                <div class="col-sm-2">
                                    <a href="VerAnuncio.html" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success"><strong>Detalle</strong></a>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-1">
                                    <h7>3</h7>
                                </div>
                                <div class="col-sm-2">
                                    <h7>Anuncio 3</h7>
                                </div>
                                <div class="col-sm-7">
                                    <h7>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium quam rem dolor
                                        vel sint nobis...
                                    </h7>
                                </div>
                                <div class="col-sm-2">
                                    <a href="VerAnuncio.html" style="background-color: rgb(70, 206, 17); color:black" class="btn btn-success"><strong>Detalle</strong></a>
                                </div>
                            </div>
                            <br>
                        </div>
                            <br>
                            <br>
                            <br>
                            <h3 style="color:rgb(29, 140, 184);"><strong>CITAS DEL DÍA</strong></h3>
                    </div>
                <br>
                <br>
                <table class="table table-active" style="align-items: center; align-content: center; text-align: center; padding: 5px;" id="mytable">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Paciente</th>
                            <th>DNI</th>
                            <th>Horario</th>
                            <th>Motivo</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Asmodeo Keretano</td>
                            <td>12457898</td>
                            <td>08:00 AM - 10:00 AM</td>
                            <td>Consulta</td>
                            <td>Atendido</td>
                            <td>
                                <a href="VerResultados.html" class="btn btn-warning"><strong>Resultados</strong></a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Jeff King</td>
                            <td>78945612</td>
                            <td>10:00 AM - 12:00 PM</td>
                            <td>Control</td>
                            <td>Pendiente - Sin pago</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Karl Kroeneng</td>
                            <td>55512898</td>
                            <td>03:00 PM - 05:00 PM</td>
                            <td>Control</td>
                            <td>Pendiente - Pagado</td>
                            <td>
                                <a href="AtenderCita.html" class="btn btn-primary"><strong>Atender</strong></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                    <br>
                    <br>
                </div>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    <script src="../assets/scripts/Profesional.js" type="text/javascript"></script>
</body>
</html>