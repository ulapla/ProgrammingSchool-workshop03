package pl.coderslab.controller;

import pl.coderslab.dao.GroupDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.Group;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (urlPatterns = "/group.details")
public class GroupDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int groupId = Integer.parseInt(req.getParameter("id"));
        GroupDao groupDao = new GroupDao();
        Group group = groupDao.read(groupId);
        req.setAttribute("group", group);
        UserDao userDao = new UserDao();
        List<User> users = userDao.findAllByGroupId(groupId);
        req.setAttribute("users", users);

        req.getRequestDispatcher("/group.details.jsp").forward(req,resp);
    }
}
