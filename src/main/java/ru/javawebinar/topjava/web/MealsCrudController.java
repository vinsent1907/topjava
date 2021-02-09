package ru.javawebinar.topjava.web;

import ru.javawebinar.topjava.model.MealTo;
import ru.javawebinar.topjava.util.MealsUtil;

import java.time.LocalTime;
import java.util.List;

public class MealsCrudController {
    public List<MealTo> getAll() {
        return MealsUtil.getWithExcess(MealsUtil.MEALS,  MealsUtil.CALORIES_PER_DAY);
    }
}
