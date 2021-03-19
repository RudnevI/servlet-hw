package com.example.servlet_project.servlets;

import com.example.servlet_project.dao.DbManager;
import com.example.servlet_project.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("iin") != null) {


            String iin = request.getParameter("iin");


            User user = null;
            try {
                user = DbManager.getUserByIin(iin);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            HttpSession session = request.getSession();
            session.setAttribute("user", user);




        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }


}
