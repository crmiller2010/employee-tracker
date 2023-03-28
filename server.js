const fs = require("fs");
const inquirer = require("inquirer");
const { endWith } = require("rxjs");
const mysql = require("mysql")
let team = [];

var con = mysql.createConnection({
  host: "localhost",
  user: "yourusername",
  password: "DogsCats1"
});

const buildTeam = () => {
  inquirer
    .prompt([
      {
        type: "list",
        name: "member",
        message: "What would you like to do?",
        choices: ["view all departments", "view all roles", "view all employees", "add a department",
        "add a role","add an employee", "update an employee role"],

        
      }])

    

    }
    buildTeam();

