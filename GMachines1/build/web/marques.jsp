<%-- 
    Document   : marques
    Created on : 13 janv. 2022, 16:30:31
    Author     : OTHMANE
--%>

<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Gestion des maques </title>
        <link href="assets/css/pace.min.css" rel="stylesheet"/>
        <script src="assets/js/pace.min.js"></script>
        <!--favicon-->
        <link rel="icon" href="assets/images/logo-icon.png" type="image/x-icon">
        <!-- Vector CSS -->
        <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
        <!-- simplebar CSS-->
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
        <!-- animate CSS-->
        <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Sidebar CSS-->
        <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
        <!-- Custom Style-->
        <link href="assets/css/app-style.css" rel="stylesheet"/>
        <!-- Bootstrap core CSS-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- input style -->
        <link href="style/input.css" rel="stylesheet" type="text/css"/>
        <link href="font/css/all.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="bg-theme bg-theme1">

        <%@include file="template/menu.jsp" %>
        <%@include file="template/topHeader.jsp" %>

        <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <form class="form" action="MarqueController" method="POST">
                            <h3>Nouvelle marque</h3>
                            <div class="line"></div>
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div>
                                <label for="code">Code :</label> 
                                <input required="" type="text" name="code" id="code" value="<%=request.getParameter("code") == null ? "" : request.getParameter("code")%>" />
                            </div>

                            <div >
                                <label for="libelle">Libelle :</label> 
                                <input required="" id="libelle" type="text" name="libelle"  value="<%=request.getParameter("libelle") == null ? "" : request.getParameter("libelle")%>" />
                            </div>

                            


                            <input type="submit" value="Envoyer" /> 
                            <input type="reset" value="Annuler" />
                        </form>
                    </div>



                    <div class="col-12 col-lg-12">
                        <div class="table-responsive">
                            <table  class="table align-items-center table-flush table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>CODE</th>
                                        <th>LIBELLE</th>
                                        <th>Supprimer</th>
                                        <th>Modifier</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        MarqueSerice ms = new MarqueSerice();
                                        for (Marque m : ms.findAll()) {
                                    %>
                                    <tr>
                                        <td><%= m.getId()%></td>
                                        <td><%= m.getCode()%></td>
                                        <td><%= m.getLibelle()%></td>
                                        
                                        <td><a class="sup" href="MarqueController?id=<%=m.getId()%>&op=delete" onclick="return confirm('Voulez vous vraiment supprimer cette marque?')">Supprimer</a></td>
                                        <td><a class="mod" href="MarqueController?id=<%=m.getId()%>&op=update">Modifier</a></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> </div>
        </div>










        <%@include file="template/colorSwitch.jsp" %>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- simplebar js -->
    <script src="assets/plugins/simplebar/js/simplebar.js"></script>
    <!-- sidebar-menu js -->
    <script src="assets/js/sidebar-menu.js"></script>
    <!-- loader scripts -->
    <script src="assets/js/jquery.loading-indicator.js"></script>
    <!-- Custom scripts -->
    <script src="assets/js/app-script.js"></script>
    <!-- Chart js -->

    <script src="assets/plugins/Chart.js/Chart.min.js"></script>

    <!-- Index js -->
    <script src="assets/js/index.js"></script>
</body>
</html>
