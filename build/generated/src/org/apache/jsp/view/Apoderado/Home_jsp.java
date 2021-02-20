package org.apache.jsp.view.Apoderado;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <meta name=\"Description\" content=\"Enter your description here\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"view/assets/css/style.css\">\n");
      out.write("        <title>.: BIENVENIDO :.</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"view/assets/imgs/icono_title.png\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form>\n");
      out.write("            <!--Barra de navegacion-->\n");
      out.write("            <nav class=\"navbar navbar-expand-lg\" style=\"background-color: rgb(29, 140, 184);\">\n");
      out.write("                <a class=\"navbar-brand\" style=\"color: white;\" href=\"Home.html\">\n");
      out.write("                    <img src=\"../assets/imgs/frm_home.png\" alt=\"logo\" style=\"align-items: center; height:70px; width:55px\">\n");
      out.write("                    <i><strong>Servicios Mentales</strong></i>\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("                        aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\"></div>\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a style=\"color: white;\" class=\"nav-link\" href=\"view/Apoderado/Home.jsp\">\n");
      out.write("                            <img src=\"../assets/imgs/icono_home.png\"  style=\"width:30px\">\n");
      out.write("                            Inicio\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a style=\"color: white;\" class=\"nav-link\" name =\"datosFiliacion\" href=\"view/Apoderado/DatosDeAfiliacion.jsp\">\n");
      out.write("                            <img src=\"../assets/imgs/icono_paciente.png\" style=\"width:30px\">\n");
      out.write("                            Datos de filiación\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item \">\n");
      out.write("                        <a style=\"color: white;\" class=\"nav-link\" href=\"http://localhost:8080/Servicios_Mentales/view/Apoderado/Cita.jsp\">\n");
      out.write("                            <img src=\"../assets/imgs/icono_citas.png\" style=\"width:30px\">\n");
      out.write("                            Citas\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    &nbsp;\n");
      out.write("                    &nbsp;\n");
      out.write("                    &nbsp;\n");
      out.write("                    &nbsp;\n");
      out.write("                    &nbsp;\n");
      out.write("                    &nbsp;\n");
      out.write("                    <li class=\"nav-item \">\n");
      out.write("                        <a href=\"view/Apoderado/Login.jsp\" onclick=\"LogOut()\" style=\"color: white;\" class=\"nav-link\">\n");
      out.write("                            <img style=\"filter: invert(120); align-items: center; height:25px; width:25px\" src=\"../assets/imgs/loguot.png\">\n");
      out.write("                            <strong>Salir</strong></a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <!--Contenido-->\n");
      out.write("        <div class=\"container\" style=\"align-items: center; align-content: center;\">\n");
      out.write("            <div style=\"text-align: center; align-items: center;\">            \n");
      out.write("                <br>\n");
      out.write("                <br>             \n");
      out.write("                <h3 style=\"color:rgb(29, 140, 184);\"><strong>NOVEDADES</strong></h3>\n");
      out.write("                <br>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"align-items: center; align-self: center; align-content: center; text-align: center;\"> \n");
      out.write("\n");
      out.write("\n");
      out.write("                <table id=\"table_main\" class=\"table table-striped table-bordered\" style=\"width:100%\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Titulo</th>\n");
      out.write("                            <th>Descripción</th>\n");
      out.write("                            <th>Acción</th>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("        <!--Footer-->\n");
      out.write("        <div class=\"card bg-primary\" >\n");
      out.write("            <table class=\"container\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <div class=\"card-body\" style=\"color: white;\">\n");
      out.write("                                <h5 class=\"card-title \">Correos</h5>\n");
      out.write("                                <p class=\"card-text \">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>serviciosmentales@outlook.com</li>\n");
      out.write("                                    <li>serviciosmentales@gmail.com</li>\n");
      out.write("                                </ul>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <div class=\"card-body\" style=\"color: white;\">\n");
      out.write("                                <h5 class=\"card-title \">Teléfonos</h5>\n");
      out.write("                                <p class=\"card-text \">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>985 245 689</li>\n");
      out.write("                                    <li>976 987 423</li>\n");
      out.write("                                </ul>                                        \n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <div class=\"card-body\" style=\"color: white;\">\n");
      out.write("                                <h5 class=\"card-title \">Servicios</h5>\n");
      out.write("                                <p class=\"card-text \">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>Consulta psiquiátrica</li>\n");
      out.write("                                    <li>Certificado médico</li>\n");
      out.write("                                </ul>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </td>\n");
      out.write("                    </tr> \n");
      out.write("                    <tr> \n");
      out.write("                        <td></td>                                                  \n");
      out.write("                        <td>\n");
      out.write("                            <div class=\"row card-text\">\n");
      out.write("                                <div class=\"col-sm-12\">\n");
      out.write("                                    <i style=\"color: white; text-align: center;\">Copyright © Servicios Mentales 2020</i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>                           \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\" https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"../assets/scripts/Anuncio.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
