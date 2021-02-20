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
public class Cita {
    
    private int idCita;
    private String motivo;
    private String fecha;
    private String estado;
    private float monto;
    private int idDoctor;
    private int idPaciente;
    private String horario;

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    public void setIdDoctor(int idDoctor) {
        this.idDoctor = idDoctor;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public int getIdCita() {
        return idCita;
    }

    public String getMotivo() {
        return motivo;
    }

    public String getFecha() {
        return fecha;
    }

    public String getEstado() {
        return estado;
    }

    public float getMonto() {
        return monto;
    }

    public int getIdDoctor() {
        return idDoctor;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public String getHorario() {
        return horario;
    }
    
}
