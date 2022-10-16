package com.marocair.servlets;

import com.marocair.metier.AdminImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DashboardServlet", value = "/dashboard-servlet")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("./views/dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("direction") != null) {
            String from = request.getParameter("from");
            String to = request.getParameter("to");
            AdminImpl admin = new AdminImpl();
            request.setAttribute("echo",admin.createDirections(from,to));
        }
        else if (request.getParameter("vol") != null) {

        }
        doGet(request,response);
    }
}
