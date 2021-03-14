package kz.iitu.ead.servlets;

import kz.iitu.ead.entities.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/profile")
public class ProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users user = (Users)request.getSession().getAttribute("USER");
        if(user!=null){
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }else{
            response.sendRedirect("/login");
        }

    }
}
