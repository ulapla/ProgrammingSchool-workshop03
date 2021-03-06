package pl.coderslab.controller;

import pl.coderslab.dao.ExerciseDao;
import pl.coderslab.dao.SolutionDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class HomePage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findRecent(Integer.parseInt(getInitParameter("number-solutions")));
        req.setAttribute("solutions",solutions);
        UserDao userDao = new UserDao();
        ExerciseDao exerciseDao = new ExerciseDao();
        req.setAttribute("exerciseDao", exerciseDao);
        req.setAttribute("userDao", userDao);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
