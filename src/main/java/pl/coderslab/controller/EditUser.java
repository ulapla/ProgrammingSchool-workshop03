package pl.coderslab.controller;

import pl.coderslab.dao.UserDao;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/edit.user")
public class EditUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("id");
        if(userId != null){
            UserDao userDao = new UserDao();
            User user = userDao.read(Integer.parseInt(userId));
            req.setAttribute("user",user);
        }
        req.setAttribute("id",userId);
        req.getRequestDispatcher("/edit.user.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User user = new User();
        user.setName(req.getParameter("name"));
        user.setEmail(req.getParameter("email"));
        user.setUserGroupId(Integer.parseInt(req.getParameter("userGroupId")));
        if(req.getParameter("id") == null){
            user.setPassword(req.getParameter("password"));
            userDao.create(user);
        }
        else {
            user.setId(Integer.parseInt(req.getParameter("id")));
            userDao.update(user);
        }
        resp.sendRedirect("/users");
    }
}
