<%-- 
    Document   : topHeader
    Created on : 24 déc. 2021, 23:51:36
    Author     : OTHMANE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top">
     <ul class="navbar-nav mr-auto align-items-center">
       <li class="nav-item">
         <a class="nav-link toggle-menu" href="javascript:void();">
          <i class="icon-menu menu-icon"></i>
        </a>
       </li>
      
     </ul>
        
     <ul class="navbar-nav align-items-center right-nav-link">
       
       <li class="nav-item">
         <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
           <span class="user-profile">${ sessionScope.username }</span>
         </a>
         <ul class="dropdown-menu dropdown-menu-right">
          <li class="dropdown-item user-details">
           
              <div class="media">
                
                  <div class="media-body">
               <h6 class="mt-2 user-title"  style="color: #000;">${ sessionScope.nom } ${ sessionScope.prenom }</h6>
               <p class="user-subtitle" style="color: #000;">${ sessionScope.username }</p>
               </div>
              </div>
             
           </li>
           <li class="dropdown-divider"></li>
           <a href="LogoutController?op=logout">
            <li class="dropdown-item" style="cursor: pointer"><i class="icon-power mr-2"></i> Logout</li>
           </a>
         </ul>
       </li>
     </ul>
   </nav>
   </header> 
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
               
