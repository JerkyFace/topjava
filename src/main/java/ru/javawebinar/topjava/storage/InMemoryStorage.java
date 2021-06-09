package ru.javawebinar.topjava.storage;

import ru.javawebinar.topjava.model.Meal;

import java.util.HashMap;
import java.util.Map;

//TODO
public class InMemoryStorage implements Storage {
    Map<Integer, Meal> storage = new HashMap<>();

    @Override
    public void add(Meal meal) {

    }

    @Override
    public Meal get(int id) {
        return null;
    }

    @Override
    public void update(Meal meal) {

    }

    @Override
    public void delete(int id) {

    }
}
