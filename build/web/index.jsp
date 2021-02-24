<%-- 
    Document   : index
    Created on : 07/02/2021, 11:54:33 AM
    Author     : Mike
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="view/assets/css/login.css">
        <title>.: SERVICIOS MENTALES :.</title>
        <link rel="shortcut icon" href="view/assets/imgs/icono_title.png">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg" style="background-color: rgb(29, 140, 184);">
            <a class="navbar-brand" style="color: white;" href="index.html">
                <img src="view/assets/imgs/frm_home.png" alt="logo" style=" align-items: center; height:70px ;width:55px ">
                <i><strong>Servicios Mentales</strong></i>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown" >
                    <a style="color: white;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"><strong>Ingresar</strong></a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" >

                        <a class="btn dropdown-item" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Login.jsp">Apoderado</a>
                        <input class="btn dropdown-divider">
                        <a class="btn dropdown-item" href="http://localhost:8080/Servicios_Mentales/view/Administrador/Login.jsp">Administrador</a>
                        <a class="btn dropdown-item" href="http://localhost:8080/Servicios_Mentales/view/Profesional/Login.jsp">Profesional</a>
                        <a class="btn dropdown-item" href="http://localhost:8080/Servicios_Mentales/view/Trabajador/Login.jsp">Trabajador</a>

                    </div>

                </li>
                <li class="nav-item active">
                    <a style="color: white;" class="nav-link"><strong>Nosotros</strong></a>
                </li>
            </ul>
        </nav>
        <br>
        <br>
        <!--Contenido-->
        <div style="align-items: center; align-content: center ; text-align: center">
            <img   src="view/assets/imgs/foto.jpg"  style="width:50%; align:middle;">
        </div>
        <div style="align-items: center; align-content: center ; text-align: justify">
            <br>
            <br>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta eligendi ullam distinctio ducimus facilis fuga tempora consequatur illum provident modi, porro ipsa amet non, nesciunt necessitatibus accusantium quidem natus sed?
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi non nam molestias, expedita laudantium dignissimos nemo ipsum reiciendis facere sit, laboriosam tenetur eveniet nihil, repudiandae voluptates quibusdam? Consectetur, repellendus repellat.
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum, magni!
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatibus expedita nulla repudiandae non repellat quis molestiae, consequatur nisi maiores aperiam voluptatem, vero, praesentium dignissimos eveniet omnis nesciunt veritatis et? Mollitia vero asperiores eum dolores nostrum aspernatur, facilis amet enim. Deleniti nam at, eius est exercitationem libero cum atque voluptatum nulla.
        </div>
        <br>
        <br>

        <!--Footer -->
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

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
        <script src="assets/scripts/Anuncio.js" type="text/javascript"></script>
    </body>
</html>
