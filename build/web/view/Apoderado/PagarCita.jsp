<%@page import="java.util.Iterator"%>
<%@page import="Entidades.DetalleDePago"%>
<%@page import="java.util.LinkedList"%>

<%
    LinkedList<DetalleDePago> lista = (LinkedList) request.getSession().getAttribute("detalleDePagos");
    Iterator<DetalleDePago> it = lista.iterator();
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>.: PAGAR SERVICIO :.</title>
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
                    <a style="color: white;" class="nav-link" href="Login.jsp">
                        <img style="filter: invert(120);" src="../assets/imgs/loguot.png" alt="logo" style=" align-items: center;"
                             height="25px" width="25px">
                        <strong>Salir</strong></a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Contenido -->
    <div style="text-align: center; align-items: center;">
        <br>
        <br>
        <img src="../assets/imgs/frm_pago.png" alt="Citas" width="13%">
        <br>
        <br>
        <h3 style="color:rgb(29, 140, 184);"><strong>PAGO DE SERVICIO</strong></h3>
    </div>
    <br>
    <h5 style="text-align: center;">
        <i>
            Recuerde que los pagos se realizan a la cuenta 123-465798-789456 en el Banco de la Nacion.
            Esta cuenta esta a nombre de <strong>Abraham Chávez García</strong>.
        </i>
    </h5>
    <br>
    <table class="container table table-active" style="align-items: center; align-content: center; text-align: center; padding: 5px;">        
        <thead>
            <tr style="background-color: yellow;">

                <th>Servicio</th>

                <th>Monto (S/.)</th>
            </tr>
        </thead>
        <tbody>

            <%while (it.hasNext()) {

                    DetalleDePago detalle = it.next();%>

            <tr>

                <td><%= detalle.getServicio()%></td>

                <td><%= detalle.getMonto()%></td>

            </tr>


            <%}%>  

            <tr>
                <th>Total</th>
                <th>s/. ${totalPagar}</th>
            </tr>
        </tbody>
    </table>
    <br>
    <h5 style="text-align: center;">
        <i>
            Tras haber realizado el pago en el banco, por favor proceda a enviar su boleta de pago, para que sea verificada.
        </i>
    </h5>
    <br>
    <br>
    <form style="text-align: center;">
        <div class="form-group container" style="text-align: center;">
            <label><strong>Imagen de comprobante de pago</strong></label>
            <br>
            <br>
            <center>
                <div>
                    <input id="idImagen" required type="file" class="form-control col-sm-4" accept=".jpg,.jpeg,.png"> 
                    <label for="file">Formato de imagen: jpeg, jpg, png</label>
                </div>
                <br>
                <br>
                <button class="btn btn-success" id="buttonAdd" style="color:black; background-color: rgb(70, 206, 17);" type="submit"><strong>Enviar Comprobante</strong></button>
                &nbsp;
                &nbsp;
                &nbsp;
                <a class="btn btn-danger" href="http://localhost:8080/Servicios_Mentales/view/Apoderado/Cita.jsp"><strong>Regresar</strong></a>            
            </center>
        </div>
    </form>
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
    <script src="../assets/scripts/Pago.js" type="text/javascript"></script>

</body>
</html>
