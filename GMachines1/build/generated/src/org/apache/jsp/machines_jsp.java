package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.Marque;
import service.MarqueSerice;
import beans.Machine;
import service.MachineService;

public final class machines_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/template/menu.jsp");
    _jspx_dependants.add("/template/topHeader.jsp");
    _jspx_dependants.add("/template/colorSwitch.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Gestion des machines</title>\n");
      out.write("        <link href=\"assets/css/pace.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"assets/js/pace.min.js\"></script>\n");
      out.write("        <!--favicon-->\n");
      out.write("        <link rel=\"icon\" href=\"assets/images/logo-icon.png\" type=\"image/x-icon\">\n");
      out.write("        <!-- Vector CSS -->\n");
      out.write("        <link href=\"assets/plugins/vectormap/jquery-jvectormap-2.0.2.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- simplebar CSS-->\n");
      out.write("        <link href=\"assets/plugins/simplebar/css/simplebar.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- animate CSS-->\n");
      out.write("        <link href=\"assets/css/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Icons CSS-->\n");
      out.write("        <link href=\"assets/css/icons.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Sidebar CSS-->\n");
      out.write("        <link href=\"assets/css/sidebar-menu.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- Custom Style-->\n");
      out.write("        <link href=\"assets/css/app-style.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- Bootstrap core CSS-->\n");
      out.write("        <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n");
      out.write("        <!-- input style -->\n");
      out.write("        <link href=\"style/input.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"font/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bg-theme bg-theme1\">\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"wrapper\">\n");
      out.write(" \n");
      out.write("    <!--Start sidebar-wrapper-->\n");
      out.write("     <div id=\"sidebar-wrapper\" data-simplebar=\"\" data-simplebar-auto-hide=\"true\">\n");
      out.write("       <div class=\"brand-logo\">\n");
      out.write("        <a href=\"index.html\">\n");
      out.write("         <img src=\"assets/images/logo-icon.png\" class=\"logo-icon\" alt=\"logo icon\">\n");
      out.write("         <h5 class=\"logo-text\">GMACHINES</h5>\n");
      out.write("       </a>\n");
      out.write("     </div>\n");
      out.write("     <ul class=\"sidebar-menu do-nicescrol\">\n");
      out.write("        <li class=\"sidebar-header\">MAIN NAVIGATION</li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"dash.jsp\">\n");
      out.write("            <i class=\"zmdi zmdi-view-dashboard\"></i> <span>Dashboard</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("  \n");
      out.write("        <li>\n");
      out.write("          <a href=\"machines.jsp\">\n");
      out.write("            <i class=\"fa fa-desktop\"></i> <span>Gestion des Machines</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("  \n");
      out.write("        <li>\n");
      out.write("          <a href=\"marques.jsp\">\n");
      out.write("            <i class=\"fa fa-bandcamp\"></i> <span>Gestion des Marques</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        ");

            if(session.getAttribute("role").equals("super")){
            
      out.write("\n");
      out.write("         <li>\n");
      out.write("          <a href=\"users.jsp\">\n");
      out.write("            <i class=\"fa fa-users\"></i> <span>Gestion des utilisateurs</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        <li>\n");
      out.write("          <a href=\"machinePmarque.jsp\">\n");
      out.write("            <i class=\"fa fa-th\"></i> <span> Machine par marque</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("         <li>\n");
      out.write("          <a href=\"machineBetDate.jsp\">\n");
      out.write("            <i class=\"fa fa-th\"></i> <span> Machine entre deux date</span>\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("  \n");
      out.write("       \n");
      out.write("      </ul>\n");
      out.write("     \n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<header class=\"topbar-nav\">\n");
      out.write("    <nav class=\"navbar navbar-expand fixed-top\">\n");
      out.write("     <ul class=\"navbar-nav mr-auto align-items-center\">\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("         <a class=\"nav-link toggle-menu\" href=\"javascript:void();\">\n");
      out.write("          <i class=\"icon-menu menu-icon\"></i>\n");
      out.write("        </a>\n");
      out.write("       </li>\n");
      out.write("      \n");
      out.write("     </ul>\n");
      out.write("        \n");
      out.write("     <ul class=\"navbar-nav align-items-center right-nav-link\">\n");
      out.write("       \n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("         <a class=\"nav-link dropdown-toggle dropdown-toggle-nocaret\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("           <span class=\"user-profile\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ sessionScope.username }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("         </a>\n");
      out.write("         <ul class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("          <li class=\"dropdown-item user-details\">\n");
      out.write("           \n");
      out.write("              <div class=\"media\">\n");
      out.write("                \n");
      out.write("                  <div class=\"media-body\">\n");
      out.write("               <h6 class=\"mt-2 user-title\"  style=\"color: #000;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ sessionScope.nom }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ sessionScope.prenom }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h6>\n");
      out.write("               <p class=\"user-subtitle\" style=\"color: #000;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ sessionScope.username }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("               </div>\n");
      out.write("              </div>\n");
      out.write("             \n");
      out.write("           </li>\n");
      out.write("           <li class=\"dropdown-divider\"></li>\n");
      out.write("           <a href=\"LogoutController?op=logout\">\n");
      out.write("            <li class=\"dropdown-item\" style=\"cursor: pointer\"><i class=\"icon-power mr-2\"></i> Logout</li>\n");
      out.write("           </a>\n");
      out.write("         </ul>\n");
      out.write("       </li>\n");
      out.write("     </ul>\n");
      out.write("   </nav>\n");
      out.write("   </header> \n");
      out.write("        ");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        
      out.write("\n");
      out.write("               \n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"clearfix\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"content-wrapper\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row mt-3\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <form class=\"form\" action=\"MachineController\" method=\"POST\">\n");
      out.write("                            <h3>Nouvelle machine</h3>\n");
      out.write("                            <div class=\"line\"></div>\n");
      out.write("                            <input type=\"hidden\" name=\"id\"\n");
      out.write("                                   value=\"");
      out.print(request.getParameter("id") == null ? "" : request.getParameter("id"));
      out.write("\"\n");
      out.write("                                   size=\"id\" />\n");
      out.write("                            <div >\n");
      out.write("                                <label for=\"reference\">Référence :</label> \n");
      out.write("                                <input required=\"\" type=\"text\" name=\"reference\" id=\"reference\" value=\"");
      out.print(request.getParameter("reference") == null ? "" : request.getParameter("reference"));
      out.write("\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div >\n");
      out.write("                                <label for=\"dateAchat\">Date Achat :</label> \n");
      out.write("                                <input required=\"\"  type=\"date\" name=\"dateAchat\" id=\"dateAchat\" alue=\"");
      out.print(request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat"));
      out.write("\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div >\n");
      out.write("                                <label for=\"prix\">Prix :</label> \n");
      out.write("                                <input required=\"\" type=\"text\" name=\"prix\" id=\"prix\"value=\"");
      out.print(request.getParameter("prix") == null ? "" : request.getParameter("prix"));
      out.write("\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                                \n");
      out.write("                            <div>\n");
      out.write("                                <label for=\"marque\">Marque :</label> \n");
      out.write("                                <select name=\"marque\" id=\"marque\">\n");
      out.write("                                    ");

                                        MarqueSerice mar = new MarqueSerice();
                                        for (Marque m : mar.findAll()) {
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(m.getId());
      out.write('"');
      out.write('>');
      out.print(m.getLibelle());
      out.write("</option>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <input id=\"send\" type=\"submit\" value=\"Envoyer\" /> \n");
      out.write("                            <input type=\"reset\" value=\"Annuler\" />\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-12 col-lg-12\">\n");
      out.write("                        <div class=\"table-responsive\">\n");
      out.write("                            <table  class=\"table align-items-center table-flush table-hover\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>ID</th>\n");
      out.write("                                        <th>Référence</th>\n");
      out.write("                                        <th>Date Achat</th>\n");
      out.write("                                        <th>Prix</th>\n");
      out.write("                                        <th>Marque</th>\n");
      out.write("                                        <th>Supprimer</th>\n");
      out.write("                                        <th>Modifier</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");

                                        MachineService ms = new MachineService();
                                        for (Machine m : ms.findAll()) {
                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>");
      out.print( m.getId());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print( m.getReference());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print( m.getDateAchat());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print( m.getPrix());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print( m.getMarque().getLibelle());
      out.write("</td>\n");
      out.write("                                        <td><a class=\"sup\" href=\"MachineController?id=");
      out.print(m.getId());
      out.write("&op=delete\" onclick=\"return confirm('Voulez vous vraiment supprimer cette machine?')\">Supprimer</a></td>\n");
      out.write("                                        <td><a class=\"mod\" href=\"MachineController?id=");
      out.print(m.getId());
      out.write("&op=update\">Modifier</a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"right-sidebar\">\n");
      out.write("    <div class=\"switcher-icon\">\n");
      out.write("      <i class=\"zmdi zmdi-settings zmdi-hc-spin\"></i>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"right-sidebar-content\">\n");
      out.write("\n");
      out.write("      <p class=\"mb-0\">Gaussion Texture</p>\n");
      out.write("      <hr>\n");
      out.write("      \n");
      out.write("      <ul class=\"switcher\">\n");
      out.write("        <li id=\"theme1\"></li>\n");
      out.write("        <li id=\"theme2\"></li>\n");
      out.write("        <li id=\"theme3\"></li>\n");
      out.write("        <li id=\"theme4\"></li>\n");
      out.write("        <li id=\"theme5\"></li>\n");
      out.write("        <li id=\"theme6\"></li>\n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("      <p class=\"mb-0\">Gradient Background</p>\n");
      out.write("      <hr>\n");
      out.write("      \n");
      out.write("      <ul class=\"switcher\">\n");
      out.write("        <li id=\"theme7\"></li>\n");
      out.write("        <li id=\"theme8\"></li>\n");
      out.write("        <li id=\"theme9\"></li>\n");
      out.write("        <li id=\"theme10\"></li>\n");
      out.write("        <li id=\"theme11\"></li>\n");
      out.write("        <li id=\"theme12\"></li>\n");
      out.write("\t<li id=\"theme13\"></li>\n");
      out.write("        <li id=\"theme14\"></li>\n");
      out.write("        <li id=\"theme15\"></li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("     </div>\n");
      out.write("   </div>\n");
      out.write("  <!--end color switcher-->\n");
      out.write("   \n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <script src=\"lib/jquery-3.6.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"assets/js/popper.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- simplebar js -->\n");
      out.write("    <script src=\"assets/plugins/simplebar/js/simplebar.js\"></script>\n");
      out.write("    <!-- sidebar-menu js -->\n");
      out.write("    <script src=\"assets/js/sidebar-menu.js\"></script>\n");
      out.write("    <!-- loader scripts -->\n");
      out.write("    <script src=\"assets/js/jquery.loading-indicator.js\"></script>\n");
      out.write("    <!-- Custom scripts -->\n");
      out.write("    <script src=\"assets/js/app-script.js\"></script>\n");
      out.write("    <!-- Chart js -->\n");
      out.write("\n");
      out.write("    <script src=\"assets/plugins/Chart.js/Chart.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Index js -->\n");
      out.write("    <script src=\"assets/js/index.js\"></script>\n");
      out.write("    <script src=\"js/gMachine.js\" type=\"text/javascript\"></script>\n");
      out.write("</body>\n");
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
