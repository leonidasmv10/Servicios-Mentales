<%@page import="java.util.Iterator"%>
<%@page import="Entidades.Cita"%>
<%@page import="java.util.LinkedList"%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="view/assets/css/style.css">
        <title>.: CITAS :.</title>
        <link rel="shortcut icon" href="view/assets/imgs/icono_title.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
    </head>
    <body>

        <!--Barra de navegacion-->
        <nav class="navbar navbar-expand-lg" style="background-color: rgb(29, 140, 184);">
            <a class="navbar-brand" style="color: white;" href="Home.html">
                <img src="view/assets/imgs/frm_home.png" alt="logo" style=" align-items: center;" height="70px" width="55px">
                <i><strong>Servicios Mentales</strong></i>
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

    <!--Contenido -->
    <div style="text-align: center; align-items: center;">
        <br>
        <br>
        <img src="../assets/imgs/frm_citas.png" alt="Citas" width="10%">
        <br>
        <br>
        <h3 style="color:rgb(29, 140, 184);"><strong>CITAS</strong></h3>
    </div>
    <br>
    <div class="container" style="align-items: center; align-content: center;">
        <div style="text-align: left; align-items: center;">
            <br>
            <label><strong>Fecha de cita: </strong></label>
            &nbsp;
            &nbsp;
            &nbsp;
            <input type="date" style="width:20%;text-align: center; align-items: center;" id="search">
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <button type="submit" style="color:black; background-color: rgb(70, 206, 17);" class="btn btn-success"><strong>Buscar</strong></button>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <a class="btn btn-warning" href="view/Apoderado/RegistrarCita.jsp"><strong>+ Agregar cita</strong></a>
        </div>
    </div>
    <br>
    
    
    <!--Contenido-->
        <div class="container" style="align-items: center; align-content: center;">
            
            <div style="align-items: center; align-self: center; align-content: center; text-align: center;"> 


                <table id="table_main" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Médico Tratante</th>
                            <th>Fecha</th>
                            <th>Horario</th>
                            <th>Tipo de cita</th>
                            <th>Estado</th>
                            <th>Acción</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>

            </div>
            
        </div>




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

    <script>
        // Write on keyup event of keyword input element
        $(document).ready(function () {
            $("#search").keyup(function () {
                _this = this;
                // Show only matching TR, hide rest of them
                $.each($("#table_main tbody tr"), function () {
                    if ($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                        $(this).hide();
                    else
                        $(this).show();
                });
            });
        });
    </script>

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

</body>
</html>