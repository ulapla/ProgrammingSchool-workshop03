package pl.coderslab.controller;

import pl.coderslab.dao.ExerciseDao;
import pl.coderslab.dao.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/exercise.solution")
public class ExerciseSolution extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String solutionId = req.getParameter("id");
        SolutionDao solutionDao = new SolutionDao();
        Solution solution = solutionDao.read(Integer.parseInt(solutionId));
        req.setAttribute("solution",solution);
        req.getRequestDispatcher("/exercise.solution.jsp").forward(req, resp);
    }
}
