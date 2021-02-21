<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="view/assets/css/style.css">
        <title>.: BIENVENIDO :.</title>
        <link rel="shortcut icon" href="view/assets/imgs/icono_title.png">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">

    </head>
    <body>



        <form>
            <!--Barra de navegacion-->
            <nav class="navbar navbar-expand-lg" style="background-color: rgb(29, 140, 184);">
                <a class="navbar-brand" style="color: white;" href="Home.html">
                    <img src="../assets/imgs/frm_home.png" alt="logo" style="align-items: center; height:70px; width:55px">
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
                        <a href="view/Apoderado/Login.jsp" onclick="LogOut()" style="color: white;" class="nav-link">
                            <img style="filter: invert(120); align-items: center; height:25px; width:25px" src="../assets/imgs/loguot.png">
                            <strong>Salir</strong></a>
                    </li>
                </ul>
                </div>
            </nav>

        </form>

        <!--Contenido-->
        <div class="container" style="align-items: center; align-content: center;">
            <div style="text-align: center; align-items: center;">            
                <br>
                <br>             
                <h3 style="color:rgb(29, 140, 184);"><strong>NOVEDADES</strong></h3>
                <br>
            </div>
            <div style="align-items: center; align-self: center; align-content: center; text-align: center;"> 


                <table id="table_main" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Titulo</th>
                            <th>Descripción</th>
                            <th>Acción</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>

            </div>
            
        </div>
        
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

        <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>

        <script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

        <script src="../assets/scripts/Anuncio.js" type="text/javascript"></script>
        <script src="../assets/scripts/Apoderado.js" type="text/javascript"></script>
    </body>
</html>
