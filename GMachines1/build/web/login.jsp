<%-- 
    Document   : login
    Created on : 15 janv. 2022, 01:07:53
    Author     : OTHMANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
                        <form class="form" action="LoginController" method="POST">
                            <h3>Log In</h3>
                            <div class="line"></div>
                            <div>
                                <label for="username">Nom d'utilisateur :</label> 
                                <input required="" type="text" name="username" id="username"  />
                            </div>



                            <div >
                                <label for="pass">Mot de passe :</label> 
                                <input required="" type="password" name="pass" id="pass" />
                            </div>




                            <input id="login" type="submit" value="Log in" /> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
