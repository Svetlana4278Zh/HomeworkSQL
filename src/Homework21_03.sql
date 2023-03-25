CREATE TABLE city(
        city_id INT NOT NULL PRIMARY KEY,
        city_name VARCHAR(50) NOT NULL
);
ALTER TABLE employee ADD COLUMN city_id INT;
ALTER TABLE employee ADD FOREIGN KEY(city_id) REFERENCES city(city_id);
INSERT INTO city (
        city_id, city_name)
VALUES (1, 'Moscow'),
       (2, 'Saint-Petersburg'),
       (3, 'Ekaterinburg'),
       (4, 'Novosibirsk');
UPDATE employee SET city_id = 1 WHERE id = 2 OR id = 6;
UPDATE employee SET city_id = 2 WHERE id = 3;
UPDATE employee SET city_id = 3 WHERE id = 4 OR id = 5;
SELECT employee.first_name, employee.last_name, city.city_name
        FROM employee
        LEFT JOIN city
        ON employee.city_id = city.city_id;
SELECT city.city_name, employee.first_name, employee.last_name
        FROM city
        LEFT JOIN employee
        ON city.city_id = employee.city_id;
SELECT employee.first_name, city.city_name
        FROM employee
        FULL OUTER JOIN city
        ON employee.city_id = city.city_id;
SELECT employee.first_name, city.city_name
        FROM employee
        CROSS JOIN city;
SELECT city.city_name
        FROM city
        LEFT JOIN employee
        ON city.city_id = employee.city_id
        WHERE employee.city_id IS null;