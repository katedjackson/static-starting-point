const express = require('express');
const router = express.Router();
const models = require('../models');
const Hotel = models.Hotel;
const Restaurant = models.Restaurant;
const Activity = models.Activity;
const Promise = require('bluebird');

router.get('/', function (req, res, next) {
	const findingHotels = Hotel.findAll({})
	const findingRestaurants = Restaurant.findAll({})
	const findingActivities = Activity.findAll({})

	Promise.all([findingHotels, findingRestaurants, findingActivities])
	.then(function(foundThings) {
		res.render('index', {
    		hotels: foundThings[0],
    		restaurants: foundThings[1],
    		activities: foundThings[2]
    	});
    	console.log('sent one thing');
	})
	.catch(next);
});

module.exports = router;
