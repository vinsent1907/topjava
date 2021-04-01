package ru.javawebinar.topjava.web.meal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.ResultActions;
import ru.javawebinar.topjava.TestUtil;
import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.service.MealService;
import ru.javawebinar.topjava.web.AbstractControllerTest;
import ru.javawebinar.topjava.web.json.JsonUtil;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static ru.javawebinar.topjava.MealTestData.*;
import static ru.javawebinar.topjava.MealTestData.assertMatch;
import static ru.javawebinar.topjava.TestUtil.readFromJson;
import static ru.javawebinar.topjava.UserTestData.USER_ID;

class MealRestControllerTest extends AbstractControllerTest{

    private static final String REST_MEAL_URL = MealRestController.REST_MEAL_URL + '/';

    @Autowired
    private MealService service;

    @Test
    void testGet() throws Exception{
        mockMvc.perform(get(REST_MEAL_URL+MEAL1_ID))
                .andDo(print())
                .andExpect(status().isOk());
//                .andExpect()
    }

    @Test
    void testDelete() throws Exception{
        mockMvc.perform(delete(REST_MEAL_URL+MEAL1_ID))
                .andDo(print())
                .andExpect(status().isNoContent());
//                .andExpect();

    }

    @Test
    void testGetAll() throws Exception{
        mockMvc.perform(get(REST_MEAL_URL))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentTypeCompatibleWith(MediaType.APPLICATION_JSON_VALUE));
//                .andExpect()
    }

    @Test
    void testCreateWithLocation() throws Exception{
        Meal newMeal = getNew();
        ResultActions actions = mockMvc.perform(post(REST_MEAL_URL)
        .contentType(MediaType.APPLICATION_JSON_VALUE)
        .content(JsonUtil.writeValue(newMeal)))
                .andExpect(status().isCreated());
        Meal returned = readFromJson(actions, Meal.class);
        newMeal.setId(returned.getId());
//        assert

    }

    @Test
    void update() throws Exception{
        Meal updated = getUpdated();
        mockMvc.perform(put(REST_MEAL_URL + MEAL1_ID)
        .contentType(MediaType.APPLICATION_JSON_VALUE)
        .content(JsonUtil.writeValue(updated)))
        .andExpect(status().isNoContent());


    }

    @Test
    void getBetween() throws Exception{
    }
}