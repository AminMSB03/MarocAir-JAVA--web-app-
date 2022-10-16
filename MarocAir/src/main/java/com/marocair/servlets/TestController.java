package com.marocair.servlets;

import com.marocair.metier.ClientImpl;
import com.marocair.model.Vols;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;


@WebServlet(urlPatterns = "/test")
public class TestController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClientImpl client = new ClientImpl();
        LocalDate date = LocalDate.parse("2018-05-05");


        try {
            ArrayList<Vols> vols= client.search("casablanca","paris", Date.valueOf(date));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }






    }
}
