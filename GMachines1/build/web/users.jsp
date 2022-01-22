<%-- 
    Document   : users
    Created on : 15 janv. 2022, 01:32:26
    Author     : OTHMANE
--%>

<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion des utilisateurs</title>
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
        <link href="font/css/all.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="bg-theme bg-theme1">

        <%@include file="template/menu.jsp" %>
        <%@include file="template/topHeader.jsp" %>

        <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <form class="form" action="UserController" method="POST">
                            <h3>Nouveau utilisateur</h3>
                            <div class="line"></div>
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div >
                                <label for="nom">Nom :</label> 
                                <input required="" type="text" name="nom" id="nom" value="<%=request.getParameter("nom") == null ? "" : request.getParameter("nom")%>" />


                            </div>

                            <div >
                                <label for="prenom">Prenom :</label> 
                                <input required=""  type="text" name="prenom" id="prenom" value="<%=request.getParameter("prenom") == null ? "" : request.getParameter("prenom")%>" />


                            </div>

                            <div >
                                <label for="username">Username :</label> 
                                <input required="" type="text" name="username" id="username" value="<%=request.getParameter("username") == null ? "" : request.getParameter("username")%>" />
                            </div>
                            
                             <div>
                                <label for="pass">Mot de passe :</label> 
                                <input required="" type="pass" name="pass" id="pass" />
                            </div>
                            
                             <div>
                                <label for="cpass">Confim mot de passe :</label> 
                                <input required="" type="pass" name="cpass" id="cpass" />
                            </div>
                            
                             <div>
                                <label for="role">Role :</label> 
                                <select name="role" id="role">
                                    <option value="">Choisissez un role</option>
                                    <option value="admin">Admin</option>
                                    <option value="super">Super Admin</option>
                                </select>
                            </div>  
                            <input id="send" type="submit" value="Envoyer" /> 
                            <input type="reset" value="Annuler" />
                        </form>
                    </div>



                    <div class="col-12 col-lg-12">
                        <div class="table-responsive ">
                            <table  class="table align-items-center table-flush table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Username</th>
                                        <th>Role</th>
                                        <th>Supprimer</th>
                                        <th>Modifier</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        UserService us = new UserService();
                                        for (User m : us.findAll()) {
                                    %>
                                    <tr>
                                        <td><%= m.getId()%></td>
                                        <td><%= m.getNom()%></td>
                                        <td><%= m.getPrenom()%></td>
                                        <td><%= m.getUsername()%></td>
                                        <td><%= m.getRole()%></td>
                                        <td><a class="sup" href="UserController?id=<%=m.getId()%>&op=delete" onclick="return confirm('Voulez vous vraiment supprimer cet utilisateur?')">Supprimer</a></td>
                                        <td><a class="mod" href="UserController?id=<%=m.getId()%>&op=update">Modifier</a></td>
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
    <script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>
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
    <script src="js/gMachine.js" type="text/javascript"></script>
</body>
</html>
