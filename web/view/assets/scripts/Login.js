
$(document).ready(function () {

    login = new Login();

    $('#btnIngresar').click(function (e) {
        e.preventDefault();
        login.iniciarSesion();
    });

});

var Login = function () {

    return {

        iniciarSesion: function () {

            usuario = $("#usuario").val();
            password = $("#password").val();

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/LoginApoderado',
                data: {
                    usuario: usuario,
                    password: password
                },
                method: 'POST',
                success: function (data) {

                    if (data == "NULL") {
                        window.location = "http://localhost:8080/Servicios_Mentales/index.jsp";

                    } else{
                        var apoderado = JSON.parse(data);
                        console.log(apoderado);
                        window.location = "http://localhost:8080/Servicios_Mentales/view/Apoderado/Home.jsp";
                    }
                }
            });
        }
    }
}
