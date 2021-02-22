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
public class Historia {

    private int idHistoria;
    private String motivo;
    private int idCita;
    private String observacion;
    private String descripcion;
    private String examen;
    private String diagnostico;
    private String tratamiento;

    public int getIdHistoria() {
        return idHistoria;
    }

    public String getMotivo() {
        return motivo;
    }

    public int getIdCita() {
        return idCita;
    }

    public String getObservacion() {
        return observacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getExamen() {
        return examen;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setIdHistoria(int idHistoria) {
        this.idHistoria = idHistoria;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setExamen(String examen) {
        this.examen = examen;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
    }
    
    

}
