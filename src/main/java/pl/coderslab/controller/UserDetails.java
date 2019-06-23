package pl.coderslab.controller;

import pl.coderslab.dao.ExerciseDao;
import pl.coderslab.dao.SolutionDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.Solution;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (urlPatterns = "/user.details")
public class UserDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(userId);
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findAllByUserId(userId);
        req.setAttribute("solutions", solutions);
        req.setAttribute("user",user);
        ExerciseDao exerciseDao = new ExerciseDao();
        req.setAttribute("exerciseDao",exerciseDao);
        req.getRequestDispatcher("/user.details.jsp").forward(req,resp);
    }
}
