<%-- 
    Document   : dash
    Created on : 15 janv. 2022, 02:55:53
    Author     : OTHMANE
--%>

<%@page import="beans.Chart"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tableau de bord</title>
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
                        <div class="form" style="width: 600px;">
                            <h3>Nombre machine par marque</h3>
                            <div class="line"></div>
                            <canvas id="chart2" width="400" height="400"></canvas>
                        </div>

                    </div>
                </div> 
            </div>
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
    <script>
                const  marque = [];
                const machine = [];
                $(document).ready(function(){
        $.ajax({
        url: "ChartController",
                data: { op: "load" },
                method: 'POST',
                success: function(data) {
                let v = 0;
                        for (var i = 0; i < data.length; i++) {
                marque.push(data[i].marque);
                        machine.push(data[i].count);
                        if (data[i].count > v)
                        v = data[i].count;
                }
                v += 0.2;
                machine.push(0, v);
                var chartdata = {
                labels: marque,
                        datasets: [
                        {
                        label : 'Marque',
                        backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                        ],
                        hoverBackgroundColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1,
                        data: machine,
                        }
                    ]
                }
                var ctx = $("#chart2");
                        var barGraph = new Chart(ctx, {
                            type: 'bar',
                            data: chartdata
                        })
                }


        });
        });
               
    </script>
</body>
</html>

