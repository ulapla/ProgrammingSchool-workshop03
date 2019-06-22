package pl.coderslab.controller;

import pl.coderslab.dao.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class HomePage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findRecent(Integer.parseInt(getInitParameter("number-solutions")));
        req.setAttribute("solutions",solutions);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
