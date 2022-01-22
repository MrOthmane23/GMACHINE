<%-- 
    Document   : resP
    Created on : 15 janv. 2022, 03:36:17
    Author     : OTHMANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Réinitialiser mot de passe</title>
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
        <style>
            .cont{
                width: 50%;
                margin: 25vh auto;
                
            }
        </style>
    </head>
    <body class="bg-theme bg-theme1">
        <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-lg-12">
                    <div class="cont">
                        <form class="form" action="ResController" method="POST">
                            <h3>Réinitialiser mot de passe</h3>
                            <div class="line"></div>
                            <div >
                                <label for="pass"> Ancien Mot de passe :</label> 
                                <input required="" type="password" name="apass" id="apass" />
                            </div>
                            
                            <div >
                                <label for="pass">Nouveau Mot de passe :</label> 
                                <input required="" type="password" name="npass" id="npass" />
                            </div>
                            
                            <div >
                                <label for="pass">Confirm Mot de passe :</label> 
                                <input required="" type="password" name="cpass" id="cpass" />
                            </div>
                            <input id="login" type="submit" value="Réinitialiser" /> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

