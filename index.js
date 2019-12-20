const inquirer = require("inquirer");

const db = require("./models")

async function start(){
   const answers = await inquirer.prompt({
    type: "input",
    message: "hi",
    name: "test"

    }) 
    console.log(answers);

}

start();
