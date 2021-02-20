
$(document).ready(function () {

    apoderado = new Apoderado();

    $('#registrar').click(function (e) {
        e.preventDefault();
        apoderado.guardar();
    });
    
});

var Apoderado = function () {

    return {

        guardar: function () {

            var obj = {
                id: $("#hdnIdNombres").val(),
                nombres: $("#nombres").val(),
                apellidos: $("#apellidos").val(),
                usuario: $("#usuario").val(),
                password: $("#password").val()
            };

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/RegistrarApoderado',
                data: {
                    apoderado: JSON.stringify(obj)
                },
                method: 'POST',
                success: function (data) {
                    var ap = JSON.parse(data);
                    console.log(ap);
                    alert(ap);
                }
            });
        }
    }
}
