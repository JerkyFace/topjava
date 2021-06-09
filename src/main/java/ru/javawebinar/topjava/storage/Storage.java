package ru.javawebinar.topjava.storage;

import ru.javawebinar.topjava.model.Meal;

public interface Storage {
    void add(Meal meal);

    Meal get(int id);

    void update(Meal meal);

    void delete(int id);
}
