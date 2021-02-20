package Entidades;


public class Anuncio {

    public int idAnuncio;
    public String titulo;
    public String descripcion;
    public String tipo;
    public String estado;
    public int idAdmin;

    public int getIdAnuncio() {
        return idAnuncio;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getTipo() {
        return tipo;
    }

    public String getEstado() {
        return estado;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAnuncio(int idAnuncio) {
        this.idAnuncio = idAnuncio;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }



   


}