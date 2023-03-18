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


