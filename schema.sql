DROP DATABASE IF EXISTS module_12;
CREATE DATABASE module_12;

USE module_12;

CREATE TABLE departments(
  id INT not NULL,
  name VARCHAR(30),
  PRIMARY KEY(id)
  );


  CREATE TABLE  role(
id INT not NULL,
title VARCHAR(30),
salary DECIMAL,
department_id INT,
PRIMARY KEY(id),
foreign KEY(department_id) REFERENCES departments(id) ON DELETE SET NULL
);

CREATE TABLE employee(
id INT not NULL,
first_name VARCHAR (30),
last_name VARCHAR(30),
role_id INT,
 manager_id INT,
PRIMARY KEY (id),
foreign KEY (role_id) REFERENCES role(id) ON DELETE SET NULL
);

INSERT INTO departments(id,name)
VALUES (1,"Web Development" ),
        (2,"app development"),
        (3,"accounting"),
        (4,"HR");

INSERT INTO role (id, title, salary, department_id)
values (1, "jr. web developer",50.000, 1),
        (2, "sr. app developer",100.000, 2),
        (3, "accountant", 45.000, 3),
        (4, "HR person", 20.000, 4);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1,"john","smith",1, 4),
        (2, "jane","doe",1, 4),
        (3, "jack", "martin",1, 4),
        (4, "sarah","poe",1);
        