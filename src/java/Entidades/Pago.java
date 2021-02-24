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
public class Pago {

    private int idPago;
    private int idCita;
    private String estado;
    private String imagen;
    private int idCajero;
    private String fecha;

    public int getIdPago() {
        return idPago;
    }

    public int getIdCita() {
        return idCita;
    }

    public String getEstado() {
        return estado;
    }

    public String getImagen() {
        return imagen;
    }

    public int getIdCajero() {
        return idCajero;
    }

    public String getFecha() {
        return fecha;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public void setIdCajero(int idCajero) {
        this.idCajero = idCajero;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    
    
    
}
