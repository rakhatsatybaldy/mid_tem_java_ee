package kz.iitu.ead.servlets;


import kz.iitu.ead.db.DBManager;
import kz.iitu.ead.entities.Hotels;
import kz.iitu.ead.entities.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/addhotel")
public class AddHotelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users currentUser = (Users)request.getSession().getAttribute("USER");

        if(currentUser!=null){

            request.setCharacterEncoding("utf8");

            String name = request.getParameter("name");
            String description = request.getParameter("description");
            int stars = Integer.parseInt(request.getParameter("stars"));
            int price = Integer.parseInt(request.getParameter("price"));

            Hotels hotel = new Hotels(null, name, currentUser, description, stars, price, null);
            if(DBManager.addHotel(hotel)){
                response.sendRedirect("/addhotel?success");
            }else{
                response.sendRedirect("/addhotel?error");
            }

        }else{
            response.sendRedirect("/login");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users currentUser = (Users)request.getSession().getAttribute("USER");
        if(currentUser!=null){
            request.getRequestDispatcher("/addhotel.jsp").forward(request, response);
        }else{
            response.sendRedirect("/login");
        }

    }
}
