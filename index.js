// Dependencies -- HELP FROM JAKE'S JAVASCRIPT -- //
// -- Makes creating tables to console.log easier
// const cTable = require("console.table");
// -- Used to prompt the user
const mysql = require("mysql")
const inquirer = require("inquirer")
// -- Used to sync the database in this js file
// const sequelize = require("./config/connection")
// -- Models 
const Employees = require("./models/employees.js");
const Roles = require("./models/roles.js");
const Departments = require("./models/departments.js");
// Object used to reference the models with strings, which correspond to each table in the database
const tables = {
    Employees,
    Roles,
    Departments
}

//CREATE MWSLQ CONNECTION//
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "ems_db"
});

connection.connect(function(err) {
  if (err) throw err;

});

//CREATE INITIAL USER PROMPT//
function runStartPrompt() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View",
        "Add",
        "Update",
        "exit"
      ]
    })
}

runStartPrompt();