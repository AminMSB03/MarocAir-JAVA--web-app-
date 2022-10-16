package com.marocAir.servlets;

import com.marocAir.metier.ClientImpl;
import com.marocAir.model.Vols;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
