/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.UserService;

/**
 *
 * @author OTHMANE
 */
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {
    UserService us = new UserService();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         if (request.getParameter("op") != null) {
             if (request.getParameter("op").equals("delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                us.delete(us.findById(id));
                response.sendRedirect("users.jsp");
            } else if (request.getParameter("op").equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                User u = us.findById(id);
                response.sendRedirect("users.jsp?id=" + u.getId() + "&nom=" + u.getNom() + "&prenom=" + u.getPrenom()+"&role="+u.getRole());
            }
        } else if (!request.getParameter("id").equals("")) {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String role = request.getParameter("role");
            int id = Integer.parseInt(request.getParameter("id"));
            User u = us.findById(id);
            u.setNom(nom);
            u.setPrenom(prenom);
            u.setRole(role);
            us.update(u);
            response.sendRedirect("users.jsp");
        } else {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            String cpass = request.getParameter("cpass");
            String role = request.getParameter("role");
            if(pass.equals(cpass))
                us.create(new User(nom, prenom,username,pass,role));
            response.sendRedirect("users.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
