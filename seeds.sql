-- Deletes database if it already exists
DROP DATABASE IF EXISTS ems_db;

-- Creates database called ems_db.
CREATE DATABASE ems_db;

-- Tells mySQL to use ems_db for the following code.
USE ems_db;

-- Creates table for storing employees
CREATE TABLE employees (
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY (employee_id)
);

-- Creates table for storing roles
CREATE TABLE roles (
  role_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL NULL,
  department_id INT NULL,
  PRIMARY KEY (role_id)
);

-- Creates table for storing departments
CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL,
  PRIMARY KEY (department_id)
);

-- Use these as temp test values
INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("first", "last", 1, 2);

-- Add a role
INSERT INTO roles (title, salary, department_id)
VALUES ("Engineer", 100, 1);

-- Add a department
INSERT INTO departments (name)
VALUES ("Engineering"), ("Marketing"), ("Human Resources");
  