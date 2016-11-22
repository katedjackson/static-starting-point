// Request API access: http://www.yelp.com/developers/getting_started/api_access
var Yelp = require('yelp');
var credentials = require('./yelpcredentials');
var yelp = new Yelp(credentials);
const models = require('./models');
const Hotel = models.Hotel;
const Restaurant = models.Restaurant;
const Activity = models.Activity;

var hotels = ['Hotel Mulberry', 'Andaz Wall Street', 'The Ritz-Carlton New York, Battery Park', 'Hotel 91', 'Wall Street Inn', 'Smyth TriBeCa', 'Double Tree', 'Millenium Hilton Hotel', 'US Pacific Hotel', 'Gild Hall, a Thompson Hotel', 'Conrad New York Hotel', 'W New York', 'New York Marriott Downtown', 'Cosmopolitan Hotel', 'Club Quarters'];

var restos = ['Bouley', 'The Capital Grille', 'Cafe Katja', 'Mas Farmhouse', 'Hop Lee Restaurant', 'Jungsik', 'Rosanjin', 'Xe Lua', 'Tamarind', 'Pylos', 'Bianca Restaurant', 'Marc Forgione', 'Joe\'s Shanghai', 'Rayuela'];

// to do manually: 'Kittichai',

var activities = ['Mahayana Temple Buddhist Association',  'Battery Park', 'Staten Island Ferry Whitehall Terminal', 'Chinatown Ice Cream Factory', 'Blue Man Group', 'Scott\'s Pizza Tours', 'Apple Store', 'Ellis Island Immigration Museum', 'Washington Square Park', 'Union Square Holiday Market'];

// 'South Street Seaport','Ground Zero', 'National September 11th Memorial & Museum', 'Brooklyn Bridge Park', 'Strand Bookstore'

// hotels.forEach(function (hotel) {
//   var imageurl;
//   yelp.search({term: hotel, limit: 1, location: 'New York' })
//   .then(function (data) {
//     imageurl = data.businesses[0].image_url.replace(/ms\.jpg/, 'l.jpg');
//   })
//   .then(function() {
//     Hotel.findOne({where: {name: hotel}})
//     .then(function (foundHotel) {
//       foundHotel.update({image: imageurl})
//       .then(function (updatedHotel) {
//         console.log(`Updated image url for ${hotel}! Hooray!`);
//       })
//     })
//   });
// });

// restos.forEach(function (restaurant) {
//   var imageurl;
//   yelp.search({term: restaurant, limit: 1, location: 'New York' })
//   .then(function (data) {
//     imageurl = data.businesses[0].image_url.replace(/ms\.jpg/, 'l.jpg');
//   })
//   .then(function() {
//     Restaurant.findOne({where: {name: restaurant}})
//     .then(function (foundRestaurant) {
//       foundRestaurant.update({image: imageurl})
//       .then(function (updatedRestaurant) {
//         console.log(`Updated image url for ${restaurant}! Hooray!`);
//       })
//     })
//   });
// });


activities.forEach(function (activity) {
  var imageurl;
  yelp.search({term: activity, limit: 1, location: 'New York' })
  .then(function (data) {
    imageurl = data.businesses[0].image_url.replace(/ms\.jpg/, 'l.jpg');
  })
  .then(function() {
    Activity.findOne({where: {name: activity}})
    .then(function (foundActivity) {
      foundActivity.update({image: imageurl})
      .then(function (updatedActivity) {
        console.log(`Updated image url for ${activity}! Hooray!`);
      })
    })
  });
});

  // yelp.search({term: 'Strand Bookstore', limit: 10, location: 'New York' })
  // .then(function (data) {
  //   for (var i = 0; i < data.businesses.length; i++) {
  //     console.log(data.businesses[i].name);
  //   }
  //   large_image_url = data.businesses[1].image_url.replace(/ms\.jpg/, 'l.jpg');
  //   Activity.findOne({where: {name: 'Strand Bookstore'}})
  //   .then(function (foundRestaurant) {
  //     foundRestaurant.update({image: large_image_url})
  //     .then(function (updatedRestaurant) {
  //       console.log(`Updated image url! Hooray!`);
  //     })
  //   })
  // })
