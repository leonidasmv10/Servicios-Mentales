
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
  <link rel="stylesheet" href="assets/css/login.css">
  <link rel="shortcut icon" href="../imgs/icono_title.png">
</head>
<body>
  <main>
    <div class="container-fluid">
      <div class="row">             
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <img src="../imgs/frm_login.jpg" alt="login image" class="login-img">
        </div>
        <div class="col-sm-6 login-section-wrapper" style="align-items: center; align-content: center; text-align: center;">          
          <div class="login-wrapper">
            <img src="../imgs/icono_cajera.png" width="50%"> 
            <br>
            <br>
            <h1 class="login-title">Iniciar sesión</h1>
            <form action="Login.jsp" method="post">
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
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="../assets/scripts/Trabajador.js" type="text/javascript"></script>
</body>
</html>

