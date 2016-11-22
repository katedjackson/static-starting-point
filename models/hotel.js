const Sequelize = require('sequelize');
const dbConnection = require('./_db');

const Hotel = dbConnection.define('hotel', {
    name: {
        type: Sequelize.STRING,
        allowNull: false
    }, 
    num_stars: { //integer 1-5
    	type: Sequelize.DECIMAL,
    	allowNull: false
    }, 
    amenities: {//string of comma delimited items
    	type: Sequelize.STRING
    }, 
    image: {
        type: Sequelize.STRING,
        defaultValue: null,
    }
});

module.exports = Hotel;