DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (date_time, description, calories, user_id)
VALUES ('2021-01-02 09:10', 'Завтрак USER', 1001, 100000),
       ('2021-01-02 13:00', 'Обед USER', 1000, 100000),
       ('2020-01-31 00:00', 'Обед USER', 1000, 100000),
       ('2021-01-02 20:00', 'Ужин ADMIN', 500, 100001),
       ('2021-01-03 10:00', 'Завтрак USER', 500, 100000),
       ('2021-01-03 14:00', 'Обед ADMIN', 1000, 100001),
       ('2021-01-03 18:00', 'Ужин USER', 510, 100000);

