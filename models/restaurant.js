const Sequelize = require('sequelize');
const dbConnection = require('./_db');

const Restaurant = dbConnection.define('restaurant', {
    name: {
        type: Sequelize.STRING,
        allowNull: false
    }, 
    cuisine: { //comma delimited string list
    	type: Sequelize.STRING,
    	allowNull: false
    }, 
    price: { //integer from 1-5 for how many dollar signs
    	type: Sequelize.INTEGER,
    	allowNull: false
    }, 
    image: {
        type: Sequelize.STRING,
        defaultValue: null,
    }
});

module.exports = Restaurant;