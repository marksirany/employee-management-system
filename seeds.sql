-- Deletes database if it already exists
DROP DATABASE IF EXISTS ems_db;

-- Creates database called ems_db.
CREATE DATABASE ems_db;

-- Tells mySQL to use ems_db for the following code.
USE ems_db;

-- Creates table for storing employee
CREATE TABLE employee
(
  employee_id INT NOT NULL
  AUTO_INCREMENT,
  first_name VARCHAR
  (30) NULL,
  last_name VARCHAR
  (30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY
  (employee_id)
);

  -- Creates table for storing role
  CREATE TABLE role
  (
    role_id INT NOT NULL
    AUTO_INCREMENT,
  title VARCHAR
    (30) NULL,
  salary DECIMAL NULL,
  department_id INT NULL,
  PRIMARY KEY
    (role_id)
);

    -- Creates table for storing department
    CREATE TABLE department
    (
      department_id INT NOT NULL
      AUTO_INCREMENT,
  name VARCHAR
      (30) NULL,
  PRIMARY KEY
      (department_id)
);

      -- Add seed values
      -- Add Employee seed values
      INSERT INTO employee
        (employee_id, first_name, last_name, role_id, manager_id)
      VALUES
        (1, "mark", "sirany", 1, 2);

      INSERT INTO employee
        (employee_id, first_name, last_name, role_id, manager_id)
      VALUES
        (2, "norman", "bates", 2, 3);

      INSERT INTO employee
        (employee_id, first_name, last_name, role_id, manager_id)
      VALUES
        (3, "jennifer", "anniston", 3, 4);

      -- Add Role seed values
      INSERT INTO role
        (title, salary, department_id)
      VALUES
        ("engineer", 100, 1);

      INSERT INTO role
        (title, salary, department_id)
      VALUES
        ("content writer", 200, 2);

      INSERT INTO role
        (title, salary, department_id)
      VALUES
        ("administrative assistant", 300, 3);
      -- Add a department
      INSERT INTO department
        (name)
      VALUES
        ("Engineering"),
        ("Marketing"),
        ("Human Resources");
      -- Deletes database if it already exists
      DROP DATABASE IF EXISTS ems_db;

      -- Creates database called ems_db.
      CREATE DATABASE ems_db;

      -- Tells mySQL to use ems_db for the following code.
      USE ems_db;

      -- Creates table for storing employee
      CREATE TABLE employee
      (
        employee_id INT NOT NULL
        AUTO_INCREMENT,
  first_name VARCHAR
        (30) NULL,
  last_name VARCHAR
        (30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY
        (employee_id)
);

        -- Creates table for storing role
        CREATE TABLE role
        (
          role_id INT NOT NULL
          AUTO_INCREMENT,
  title VARCHAR
          (30) NULL,
  salary DECIMAL NULL,
  department_id INT NULL,
  PRIMARY KEY
          (role_id)
);

          -- Creates table for storing department
          CREATE TABLE department
          (
            department_id INT NOT NULL
            AUTO_INCREMENT,
  name VARCHAR
            (30) NULL,
  PRIMARY KEY
            (department_id)
);

            -- Add seed values
            -- Add Employee seed values
            INSERT INTO employee
              (employee_id, first_name, last_name, role_id, manager_id)
            VALUES
              (1, "mark", "sirany", 1, 2);

            INSERT INTO employee
              (employee_id, first_name, last_name, role_id, manager_id)
            VALUES
              (2, "norman", "bates", 2, 3);

            INSERT INTO employee
              (employee_id, first_name, last_name, role_id, manager_id)
            VALUES
              (3, "jennifer", "anniston", 3, 4);

            -- Add Role seed values
            INSERT INTO role
              (title, salary, department_id)
            VALUES
              ("engineer", 100, 1);

            INSERT INTO role
              (title, salary, department_id)
            VALUES
              ("content writer", 200, 2);

            INSERT INTO role
              (title, salary, department_id)
            VALUES
              ("administrative assistant", 300, 3);
            -- Add a department
            INSERT INTO department
              (name)
            VALUES
              ("Engineering"),
              ("Marketing"),
              ("Human Resources");
  