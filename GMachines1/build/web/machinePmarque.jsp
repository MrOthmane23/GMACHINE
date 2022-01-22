<%-- 
    Document   : machinePmarque
    Created on : 14 janv. 2022, 00:48:53
    Author     : OTHMANE
--%>


<%@page import="beans.*"%>
<%@page import="service.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Filter machine par marque </title>
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
                        <div class="form">
                            <h3>Filterage Par Marque</h3>
                            <div class="line"></div>
                            <div>
                                <label for="marque">Marque :</label> 
                                <select name="marque" id="marque">
                                    <%
                                        MarqueSerice ms = new MarqueSerice();
                                        for (Marque m : ms.findAll()) {
                                    %>
                                    <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-12">
                        <div class="table-responsive">
                            <table  class="table align-items-center table-flush table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Référence</th>
                                        <th>Date Achat</th>
                                        <th>Prix</th>
                                    </tr>
                                </thead>
                                <tbody id="content">

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
    <script src="js/filterMPM.js" type="text/javascript"></script>
    <script src="assets/plugins/Chart.js/Chart.min.js"></script>

    <!-- Index js -->
    <script src="assets/js/index.js"></script>
</body>
</html>
