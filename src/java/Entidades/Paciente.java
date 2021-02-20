
package Entidades;


public class Paciente {
    
    int idPaciente;
    String nombres ;
    String apellidos;
    String dni;
    String fechaDeNacimiento ;
    String sexo;
    String direccion;
    String religion;
    String estadoCivil;
    String nivelAcademico;

    public Paciente(int idPaciente, String nombres, String apellidos, String dni, String fechaDeNacimiento, String sexo, String direccion, String nivelAcademico) {
        this.idPaciente = idPaciente;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;
        this.fechaDeNacimiento = fechaDeNacimiento;
        this.sexo = sexo;
        this.direccion = direccion;
        this.nivelAcademico = nivelAcademico;
    }
    
     public Paciente() {
        
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setFechaDeNacimiento(String fechaDeNacimiento) {
        this.fechaDeNacimiento = fechaDeNacimiento;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public void setNivelAcademico(String nivelAcademico) {
        this.nivelAcademico = nivelAcademico;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getDni() {
        return dni;
    }

    public String getFechaDeNacimiento() {
        return fechaDeNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getReligion() {
        return religion;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public String getNivelAcademico() {
        return nivelAcademico;
    }
    
}
