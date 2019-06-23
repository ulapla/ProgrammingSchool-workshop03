package pl.coderslab.controller;

import pl.coderslab.dao.GroupDao;
import pl.coderslab.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/edit.group")
public class EditGroup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String groupId = req.getParameter("id");
        if(groupId != null){
            GroupDao groupDao = new GroupDao();
            Group group = groupDao.read(Integer.parseInt(groupId));
            req.setAttribute("group", group);
        }
        req.setAttribute("id",groupId);
        req.getRequestDispatcher("/edit.group.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        Group group = new Group();
        group.setName(req.getParameter("name"));
        if(req.getParameter("id") == null){
            groupDao.create(group);
        }
        else{
            group.setId(Integer.parseInt(req.getParameter("id")));
            groupDao.update(group);
        }
        resp.sendRedirect("/groups.edit");
    }
}
