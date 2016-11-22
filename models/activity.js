const Sequelize = require('sequelize');
const dbConnection = require('./_db');

const Activity = dbConnection.define('activity', {
    name: {
        type: Sequelize.STRING,
        allowNull: false
    }, 
    age_range: { //data-type string
    	type: Sequelize.STRING,
        allowNull: false
    }, 
    image: {
        type: Sequelize.STRING,
        defaultValue: null,
    }
});

module.exports = Activity;