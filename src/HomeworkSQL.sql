CREATE TABLE employee (
                          id BIGSERIAL NOT NULL PRIMARY KEY,
                          first_name VARCHAR(50) NOT NULL,
                          last_name VARCHAR(50) NOT NULL,
                          gender VARCHAR(6) NOT NULL,
                          age INT NOT NULL
);
INSERT INTO employee (
    first_name, last_name, gender, age)
VALUES ('Ivan', 'Ivanov', 'male', 30),
       ('Petr', 'Petrov', 'male', 24),
       ('Anna', 'Ivanova', 'female', 25);
SELECT * FROM employee;

UPDATE employee SET first_name = 'Elena', last_name = 'Smirnova', gender = 'female', age = 18 WHERE id = 2;
SELECT * FROM employee;

DELETE FROM employee WHERE id = 1;
SELECT * FROM employee;

INSERT INTO employee (
    first_name, last_name, gender, age)
VALUES ('Maksim', 'Petrov', 'male', 20),
       ('Aleksey', 'Tolstoy', 'male', 46),
       ('Irina', 'Petrova', 'female', 25);
SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age < 30 OR age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE first_name LIKE '_____%';
UPDATE employee SET first_name = 'Elena' WHERE id = 6;
UPDATE employee SET first_name = 'Maksim' WHERE id = 5;
SELECT first_name AS Имя,
        SUM (age) AS Суммарный_возраст
        FROM employee GROUP BY Имя;
SELECT first_name AS Имя,
        MIN (age) AS Самый_юный_возраст
        FROM employee
        GROUP BY Имя;
SELECT SELECT first_name AS Имя,
        MAX (age) AS Максимальный_возраст
        FROM employee
        GROUP BY Имя
        HAVING COUNT(first_name) > 1
        ORDER BY Максимальный_возраст;
