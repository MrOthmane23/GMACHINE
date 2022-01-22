<%-- 
    Document   : menu
    Created on : 24 déc. 2021, 23:50:25
    Author     : OTHMANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="wrapper">
 
    <!--Start sidebar-wrapper-->
     <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
       <div class="brand-logo">
        <a href="dash.jsp">
         <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
         <h5 class="logo-text">GMACHINES</h5>
       </a>
     </div>
     <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MAIN NAVIGATION</li>
        <li>
          <a href="dash.jsp">
            <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
  
        <li>
          <a href="machines.jsp">
            <i class="fa fa-desktop"></i> <span>Gestion des Machines</span>
          </a>
        </li>
  
        <li>
          <a href="marques.jsp">
            <i class="fas fa-layer-group"></i> <span>Gestion des Marques</span>
          </a>
        </li>
        <%
            if(session.getAttribute("role").equals("super")){
            %>
         <li>
          <a href="users.jsp">
            <i class="fa fa-users"></i> <span>Gestion des utilisateurs</span>
          </a>
        </li>
        <%}%>
        <li>
          <a href="machinePmarque.jsp">
            <i class="fa fa-th"></i> <span> Machine par marque</span>
          </a>
        </li>
        
         <li>
          <a href="machineBetDate.jsp">
            <i class="fa fa-th"></i> <span> Machine entre deux date</span>
          </a>
        </li>
  
       
      </ul>
     
     </div>

