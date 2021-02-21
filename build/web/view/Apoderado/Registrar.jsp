    <%@page import="java.sql.*"%>
<%@page import="Models.GestorSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>.: CREAR CUENTA :.</title>
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/login.css">
        <link rel="shortcut icon" href="../assets/imgs/icono_title.png">
    </head>
    <body>
        <main>
            <div class="container-fluid">
                <div class="row">     
                    <div class="col-sm-6 login-section-wrapper">
                        <div class="brand-wrapper">
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            &nbsp;                
                            <img src="../assets/imgs/login_paciente.png" width="30%">
                            <br>
                        </div>
                        <div class="login-wrapper">
                            <h1 class="login-title">Crear una cuenta</h1>
                            <form>
                                <input name="pagina" value="RegistrarApoderado" hidden>
                                <div class="form-group">
                                    <label>Nombre(s)</label>
                                    <input required minlength="4" type="text"  id="nombres" class="form-control" placeholder="Ingrese su nombre completo">
                                    <input id="hdnIdNombres" type="hidden" />
                                </div>
                                <div class="form-group mb-4">
                                    <label>Apellidos</label>
                                    <input minlength="4" required type="text" id="apellidos"  class="form-control" placeholder="Ingrese sus apellidos">
                                </div>
                                <div class="form-group">
                                    <label>Usuario</label>
                                    <input required minlength="4" type="text" id="usuario"  class="form-control" placeholder="Ingrese un nombre de usuario">
                                </div>
                                <div class="form-group mb-4">
                                    <label >Contraseña</label>
                                    <input minlength="4" required  type="password" id="password" id="password" class="form-control" placeholder="Ingrese una contraseña">
                                </div>
                                <br>
                                <center>
                                    <input type="submit" id="registrar" class="btn" value="Registrar"  style="padding: 10px 12px; font-size: 15px; border-color: rgb(29, 140, 184); color:rgb(29, 140, 184);">
                                </center>  
                            </form>                                    
                        </div>
                    </div>         
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="../assets/imgs/frm_login.jpg" alt="login image" style="width: 100%;height: 80%;object-fit: cover; object-position: left;">
                    </div>
                </div>
            </div>          
        </main>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>       
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="../assets/scripts/Apoderado.js" type="text/javascript"></script>
    </body>
</html>
