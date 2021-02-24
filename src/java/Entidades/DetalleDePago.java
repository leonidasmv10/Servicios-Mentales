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
public class DetalleDePago {
    
    private int idDetalleDePago;
    private int idCita;
    private String servicio;
    private int monto;

    public int getIdDetalleDePago() {
        return idDetalleDePago;
    }

    public int getIdCita() {
        return idCita;
    }

    public String getServicio() {
        return servicio;
    }

    public int getMonto() {
        return monto;
    }

    public void setIdDetalleDePago(int idDetalleDePago) {
        this.idDetalleDePago = idDetalleDePago;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }
    
    
    
}
