
$(document).ready(function () {

    paciente = new Paciente();


    $('#botonRegistrar').click(function (e) {

        e.preventDefault();
        paciente.guardar();

    });

    $('#botonModificar').click(function (e) {

        e.preventDefault();
        paciente.modificar();

    });




});

var Paciente = function () {

    return {

        guardar: function () {

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/RegistrarDatosDeAfiliacion',
                data: {

                    nombres: $("#nombreT").val(),
                    apellidos: $("#apellidosT").val(),
                    dni: $("#dniT").val(),
                    sexo: $("#sexoT").val(),
                    fechaDeNacimiento: $("#fechaNacT").val(),
                    direccion: $("#direccionT").val(),
                    religion: $("#religionT").val(),
                    estadoCivil: $("#estadoCivilT").val(),
                    nivelAcademico: $("#nivelAcademicoT").val(),

                    celular: $("#celularT").val(),
                    celularEmergencia: $("#celEmergenciaT").val(),
                    correo: $("#correoT").val(),
                },
                method: 'POST',
                async: true,
                success: function (data) {
                    var p = JSON.parse(data);
                    console.log(p);
                    alert(p);
                }
            });
        },

        obtenerID: function () {

            let result = "";

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/ObtenerIDApoderado',
                method: 'GET',
                async: false,
                success: function (data) {
                    result = data;
                }
            });
            return Number(result);
        },

        obtener: function ()
        {
            let obj;

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/ObtenerApoderado',
                method: 'GET',
                async: false,
                success: function (data) {
                    obj = JSON.parse(data);
                }
            });
            return obj;
        },

        modificar: function ()
        {




            alert("ModificANDO");

            $.ajax({
                url: 'http://localhost:8080/Servicios_Mentales/ModificarDatosDeAfiliacion',
                data: {

                    nombres: $("#nombreT").val(),
                    apellidos: $("#apellidosT").val(),
                    dni: $("#dniT").val(),
                    sexo: $("#sexoT").val(),
                    fechaDeNacimiento: $("#fechaNacT").val(),
                    direccion: $("#direccionT").val(),
                    religion: $("#religionT").val(),
                    estadoCivil: $("#estadoCivilT").val(),
                    nivelAcademico: $("#nivelAcademicoT").val(),

                    celular: $("#celularT").val(),
                    celularEmergencia: $("#celEmergenciaT").val(),
                    correo: $("#correoT").val(),
                },
                method: 'POST',
                async: true,
                success: function (data) {
                    console.log(data);
                    alert("Funcionando");
                }
            });
        }

    }
}
