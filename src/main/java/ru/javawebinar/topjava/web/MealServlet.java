package ru.javawebinar.topjava.web;
import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.util.MealsUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class MealServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setAttribute("mealsList", MealsUtil.filteredByStreams(MealsUtil.getMeals(), LocalTime.MIN, LocalTime.MAX, MealsUtil.CALORIES_LIMIT));

        String action = req.getParameter("action");
        if(action == null){
            req.getRequestDispatcher("/meals.jsp").forward(req, resp);
            return;
        }
        Meal mealRecord;
        switch (action) {
            case "create":
                mealRecord = new Meal(LocalDateTime.now(), "Description", 0);
                break;
            case "edit":
                //TODO
                mealRecord = new Meal(LocalDateTime.now(), "Description", 0);
                 break;
            default:
                throw new IllegalArgumentException("Action " + action + " is illegal");
        }
        req.setAttribute("record", mealRecord);
        req.getRequestDispatcher("/edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //TODO
    }
}
