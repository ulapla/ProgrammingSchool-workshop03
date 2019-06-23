package pl.coderslab.controller;

import pl.coderslab.dao.ExerciseDao;
import pl.coderslab.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/edit.exercise")
public class EditExercise extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String exerciseId = req.getParameter("id");
        if(exerciseId != null){
            ExerciseDao exerciseDao = new ExerciseDao();
            Exercise exercise = exerciseDao.read(Integer.parseInt(exerciseId));
            req.setAttribute("exercise",exercise);
        }
        req.setAttribute("id",exerciseId);//view will know which form display
        req.getRequestDispatcher("/edit.exercise.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ExerciseDao exerciseDao = new ExerciseDao();
        Exercise exercise = new Exercise();
        exercise.setTitle(req.getParameter("title"));
        exercise.setDescription(req.getParameter("description"));
        if(req.getParameter("id") == null){
            exerciseDao.create(exercise);
        }
        else{
            exercise.setId(Integer.parseInt(req.getParameter("id")));
            exerciseDao.update(exercise);
        }
        resp.sendRedirect("/exercises");
    }
}
