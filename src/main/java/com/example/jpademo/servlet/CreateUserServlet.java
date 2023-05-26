package com.example.jpademo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


import com.example.jpademo.dao.UserDAO;
import com.example.jpademo.entity.UserEntity;

@WebServlet("/createUser")
public class CreateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        String address = req.getParameter("address");

        UserDAO userDao = new UserDAO();
        UserEntity user = new UserEntity();
        user.setName(name);
        user.setAddress(address);
        user.setAge(age);

        userDao.insertUser(user);

        resp.sendRedirect("/User/index.jsp");
    }
}
