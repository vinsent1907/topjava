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

INSERT INTO meals (date_time, description, calories, user_id) values
('2021-01-02 09:10','Завтрак',1001,100000),
('2021-01-02 13:00','Обед',1000,100000),
('2021-01-02 20:00','Ужин',500,100001),
('2021-01-03 10:00','Завтрак',500,100000),
('2021-01-03 14:00','Обед',1000,100001),
('2021-01-03 18:00','Ужин',510,100000);

