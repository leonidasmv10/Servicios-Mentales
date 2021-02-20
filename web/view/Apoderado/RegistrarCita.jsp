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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
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
            <form action="CitaApoderado" method="post">
                    <tr>
                        <td>
                            <label>Motivo de la cita:</label>
                            <select name="motivo" id="idMotivo" class="form-control">
                                <option value="1">Consulta</option>
                                <option value="2">Certificado Médico</option>                          
                            </select>                          
                        </td>
                        <td>
                            <label>Fecha de cita: </label>
                            <input required class="form-control" name="fechaCita" id="idFechaCita" type="date">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Médico:</label>
                            <select name="medico" id="idMedico" class="form-control">
                                <option value="1">Ghaal Grishnack</option>
                                <option value="2">Yugi Kuruzaki</option>
                                <option value="3">Lucifer Chavez</option>
                                <option value="4">Estrella Garcia</option>
                            </select>                       
                        </td>
                        <td>
                            <label>Horarios disponibles:</label>
                            <select name="horario" id="idHorario" class="form-control">
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
            <button type="submit" style="color:black; background-color: rgb(70, 206, 17);" class="btn btn-success"><strong>Guardar</strong></button>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>