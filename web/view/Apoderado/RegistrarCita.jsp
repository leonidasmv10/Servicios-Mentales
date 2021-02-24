
<%@page import="java.util.Iterator"%>
<%@page import="Entidades.Profesional"%>
<%@page import="java.util.LinkedList"%>

<%
    LinkedList<Profesional> listaProfesionales = (LinkedList) request.getSession().getAttribute("profesionales");
    Iterator<Profesional> it = listaProfesionales.iterator();
%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <link rel="stylesheet" href="view/assets/css/style.css">
        <title>.: REGISTRAR CITA :.</title>
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
    <div style="text-align: center; align-items: center;  align-content: center; align-self: center;">
        <br>
        <br>
        <img src="view/assets/imgs/frm_citas.png" alt="Citas" width="10%">
        <br>
        <br>
        <h3 style="color:rgb(29, 140, 184);"><strong>AGENDAR CITA</strong></h3>                
    </div>
    <br>
    <table class="container table-active table ">
        <tbody>
        <form>
            <tr>
                <td>
                    <label>Motivo de la cita:</label>
                    <select name="motivo" id="idMotivo" class="form-control">
                        <option value="Consulta">Consulta</option>
                        <option value="Certificado Médico">Certificado Médico</option>                          
                    </select>      
                    <input id="hdnIdCita" type="hidden" />
                </td>
                <td>
                    <label>Fecha de cita: </label>
                    <input required class="form-control" id="idFechaCita" type="date">
                </td>
            </tr>
            <tr>
                <td>
                    <label>Médico:</label>
                    <select name="medico" id="idMedico" class="form-control">


                        <%while (it.hasNext()) {
                                 Profesional profesional = it.next();%>

                        <option value=<%= profesional.getIdProfesional()%>>
                            <%= profesional.getNombres()%> <%= profesional.getApellidos()%> 
                        </option>

                        <%}%>  
                    </select>                       
                </td>





                <td>
                    <label>Horarios disponibles:</label>
                    <select id="idHorario" class="form-control">
                        <option value="08:00 AM - 10:00 AM">08:00 AM - 10:00 AM</option>
                        <option value="10:00 AM - 12:00 PM">10:00 AM - 12:00 PM</option>
                        <option value="03:00 PM - 05:00 PM">03:00 PM - 05:00 PM</option>
                        <option value="07:00 PM - 09:00 PM">07:00 PM - 09:00 PM</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="text-align: left;">
                    <label style="text-align: left;">Costo: </label>                                        
                    <input value="s/. 100.00" class="form-group" disabled>
                </td>
            </tr>                                
            </tbody>
    </table>
    <br>
    <br>
<center>
    <button type="submit" id="submitCita" style="color:black; background-color: rgb(70, 206, 17);" class="btn btn-success"><strong>Guardar</strong></button>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;
    <a href="CitasIndex.html" class="btn btn-danger"><strong>Cancelar</strong></a>
</center>
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