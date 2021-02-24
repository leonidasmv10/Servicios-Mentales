
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>.: INICIAR SESIÓN :.</title>
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/login.css">
        <link rel="shortcut icon" href="../assets/imgs/icono_title.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">

    </head>
    <body>
        <main>
            <div class="container-fluid">
                <div class="row">             
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="../assets/imgs/frm_login.jpg" alt="login image" class="login-img">
                    </div>
                    <div class="col-sm-6 login-section-wrapper" style="align-items: center; align-content: center; text-align: center;">          
                        <div class="login-wrapper">
                            <img src="../assets/imgs/icono_cajera.png" width="50%"> 
                            <br>
                            <br>
                            <h1 class="login-title">Iniciar sesión</h1>
                            <form>
                                <div class="form-group">
                                    <label for="email" id="idUser">Usuario</label>
                                    <input  required type="text" id="usuario" class="form-control" placeholder="Ingrese su nombre de usuario">
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password">Contraseña</label>
                                    <input required type="password"  id="password" class="form-control" placeholder="Ingrese su contraseña">
                                </div>
                                <br>
                                <input id="btnIngresar" type="submit" style="padding: 10px 17px; background-color: rgb(29, 140, 184); border-radius: 0; font-size: 15px; font-weight: bold; color: #fff; margin-bottom: 14px;" value="Ingresar">
                            </form>            
                        </div>
                    </div>
                </div>
            </div>
        </main>
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
        <script src="../assets/scripts/Trabajador.js" type="text/javascript"></script>
    </body>
</html>

