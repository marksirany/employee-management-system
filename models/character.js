// Dependencies
// =============================================================

const db = require(".")

console.log(db)
// Creates a "Character" model that matches up with DB
const Character = db.sequelize.define("character", {
    // the routeName gets saved as a string
    routeName: db.Sequelize.STRING,
    // the name of the character (a string)
    name: db.Sequelize.STRING,
    // the character's role (a string)
    role: db.Sequelize.STRING,
    // the character's age (a string)
    age: db.Sequelize.INTEGER,

    // and the character's force points (an int)
    forcePoints: Sequelize.INTEGER
}, {
    // disable the modification of tablenames; By default, sequelize will automatically
    // transform all passed model names (first parameter of define) into plural.
    // if you don't want that, set the following
    freezeTableName: true
});

// Syncs with DB
Character.sync();

