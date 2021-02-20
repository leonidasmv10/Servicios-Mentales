/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author yordy
 */
public class Apoderado {
    
    private int idApoderado;
    private String nombres;
    private String apellidos;
    private String usuario;
    private String password;
    private String celular;
    private String celularEmergencia;
    private int idPaciente;
    private String estadoCuenta;
    private String correo;

    public Apoderado(String nombres, String apellidos, String usuario, String password) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.usuario = usuario;
        this.password = password;
    }
    
    public Apoderado() {
        
    }

    public void setIdApoderado(int idApoderado) {
        this.idApoderado = idApoderado;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setPassword(String passwordd) {
        this.password = passwordd;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public void setCelularEmergencia(String celularEmergencia) {
        this.celularEmergencia = celularEmergencia;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public void setEstadoCuenta(String estadoCuenta) {
        this.estadoCuenta = estadoCuenta;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getIdApoderado() {
        return idApoderado;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getPassword() {
        return password;
    }

    public String getCelular() {
        return celular;
    }

    public String getCelularEmergencia() {
        return celularEmergencia;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public String getEstadoCuenta() {
        return estadoCuenta;
    }

    public String getCorreo() {
        return correo;
    }

    
    
}
