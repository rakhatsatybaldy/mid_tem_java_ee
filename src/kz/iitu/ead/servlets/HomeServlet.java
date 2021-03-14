package kz.iitu.ead.servlets;
import kz.iitu.ead.db.DBManager;
import kz.iitu.ead.entities.Hotels;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Hotels> hotels = DBManager.getAllHotels();
        request.setAttribute("hotel", hotels);
        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }
}
