// This file should contain all the record creation needed to seed the database with its default values.
// The data can then be loaded with the node seed.js

var Promise = require('bluebird');
var db = require('./models').db;
var Place = require('./models/place');
var Hotel = require('./models/hotel');
var Restaurant = require('./models/restaurant');
var Activity = require('./models/activity');

var data = {
    hotel: [{
    name: "Smyth TriBeCa",
    place: {address: "85 West Broadway", city: "New York", state: "NY", phone: "123-456-7890", location: [40.715076, -74.009301]},
    num_stars: 3.5,
    amenities: "24 hour Gym",
    image: "https://s3-media2.fl.yelpcdn.com/bphoto/6FJ6uV2vrieDS0Sy3ZCJvg/l.jpg",
}, {
    name: "Hotel Mulberry",
    place: {address: "52 Mulberry St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.715317, -73.999542]},
    num_stars: 4.5,
    amenities: "Free Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/-CcCE3zQgUnPvTlnDwTneA/l.jpg",
}, {
    name: "Andaz Wall Street",
    place: {address: "75 Wall St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.705137, -74.007624]},
    num_stars: 4,
    amenities: "Pool, Free Wi-Fi",
    image: "https://s3-media4.fl.yelpcdn.com/bphoto/dvLUKBfczCG29_TtGHek2g/l.jpg",
}, {
    name: "Club Quarters",
    place: {address: "140 Washington St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.709630, -74.013940]},
    num_stars: 4,
    amenities: "Free Wif-Fi",
    image: "https://s3-media2.fl.yelpcdn.com/bphoto/wjc3UIFzehSkT4S1iElUYQ/l.jpg",
}, {
    name: "Millenium Hilton Hotel",
    place: {address: "55 Church St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.711597, -74.010392]},
    num_stars: 3.5,
    amenities: "Paid Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/opFpurIC4KTeLAkzMoH92A/l.jpg",
}, {
    name: "US Pacific Hotel",
    place: {address: "106 Bowery", city: "New York", state: "NY", phone: "123-456-7890", location: [40.717873, -73.995231]},
    num_stars: 2,
    amenities: "Accepts Credit Cards",
    image: "https://s3-media1.fl.yelpcdn.com/bphoto/RZyjWwOpIKaWwhayj_wRzg/l.jpg",
}, {
    name: "Cosmopolitan Hotel",
    place: {address: "95 W Broadway", city: "New York", state: "NY", phone: "123-456-7890", location: [40.715681, -74.008922]},
    num_stars: 3.5,
    amenities: "Free Wif-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/hDdQFznRpkayxYOHG7Mnxg/l.jpg",
}, {
    name: "Hotel 91",
    place: {address: "91 E Broadway", city: "New York", state: "NY", phone: "123-456-7890", location: [40.713427, -73.993624]},
    num_stars: 3.5,
    amenities: "Free Wi-Fi",
    image: "https://s3-media4.fl.yelpcdn.com/bphoto/XNJp96K6S4aOLB_Rak9MnA/l.jpg",
}, {
    name: "The Ritz-Carlton New York, Battery Park",
    place: {address: "Two West Street", city: "New York", state: "NY", phone: "123-456-7890", location: [40.705417, -74.017241]},
    num_stars: 4.5,
    amenities: "24 hour Gym, Paid Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/YU3lXIQxYy3UM6Hl2VUHXA/l.jpg",
}, {
    name: "New York Marriott Downtown",
    place: {address: "85 W St at Albany St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.731131, -73.989568]},
    num_stars: 3.5,
    amenities: "24 hour Gym, Paid Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/gMy2udxTzx1CpP62M6Bd2Q/l.jpg",
}, {
    name: "Gild Hall, a Thompson Hotel",
    place: {address: "15 Gold Street", city: "New York", state: "NY", phone: "123-456-7890", location: [40.707894, -74.007108]},
    num_stars: 4,
    amenities: "Paid Wi-Fi",
    image: "https://s3-media1.fl.yelpcdn.com/bphoto/cVdthjZkG95IPlchph7ziQ/l.jpg",
}, {
    name: "Conrad New York Hotel",
    place: {address: "102 N End Ave", city: "New York", state: "NY", phone: "123-456-7890", location: [40.714985, -74.015841]},
    num_stars: 3.5,
    amenities: "Paid Wi-Fi, Dogs Allowed",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/YNZBf86mw7JPNFG1-uZ09A/l.jpg",
}, {
    name: "Double Tree",
    place: {address: "8 Stone St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.703961, -74.012350]},
    num_stars: 3.5,
    amenities: "24 hour Gym",
    image: "https://s3-media1.fl.yelpcdn.com/bphoto/GH6CS6W2r4WFOZs1rpzujg/l.jpg",
}, {
    name: "W New York",
    place: {address: "123 Washington Street", city: "New York", state: "NY", phone: "123-456-7890", location: [40.709102, -74.013997]},
    num_stars: 3.5,
    amenities: "Pool, 24 hour Gym, Paid Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/8vqXNIgw_VocN7nGIKnftA/l.jpg",
}, {
    name: "Wall Street Inn",
    place: {address: "9 S William St", city: "New York", state: "NY", phone: "123-456-7890", location: [40.704581, -74.010273]},
    num_stars: 4,
    amenities: "Free Wi-Fi",
    image: "https://s3-media3.fl.yelpcdn.com/bphoto/clHosfoENalDp4i6I-jpVw/l.jpg",
}],
    restaurant: [{
        name: "Bouley",
        place: {
            address: "75 Wall St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.705137, -74.013940]
        },
        cuisine: "French",
        price: 4,
        image: "https://s3-media4.fl.yelpcdn.com/bphoto/hM08RKH7KrSv1Z-giu-z5w/l.jpg",
    }, {
        name: "Marc Forgione",
        place: {
            address: "134 Reade St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.716526, -74.009567]
        },
        cuisine: "Seafood",
        price: 3,
        image: "https://s3-media4.fl.yelpcdn.com/bphoto/yQox1b4kz8M4fK5chZmQKQ/l.jpg"
    }, {
        name: "Tamarind",
        place: {
            address: "99 Hudson St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.718977, -74.008929]
        },
        cuisine: "Indian",
        price: 3,
        image: "http://tamarindrestaurantsnyc.com/photos/foodPicTamarind.gif"
    }, {
        name: "Hop Lee Restaurant",
        place: {
            address: "16 Mott St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.714230, -73.998509]
        },
        cuisine: "Chinese",
        price: 2,
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/QaRnbGLFOlG35cuWBGz24w/l.jpg"
    }, {
        name: "Jungsik",
        place: {
            address: "2 Harrison St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.718679, -74.008900]
        },
        cuisine: "Korean",
        price: 4,
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/AOCHXf_qNZLWtarkx2J0iA/l.jpg"
    }, {
        name: "The Capital Grille",
        place: {
            address: "120 Broadway",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.708475, -74.010846]
        },
        cuisine: "Steakhouses, American",
        price: 4,
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/WVNp-ApSvbIAvu7Iggbfrg/l.jpg"
    }, {
        name: "Pylos",
        place: {
            address: "128 E 7th St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.726096, -73.984152]
        },
        cuisine: "Greek",
        price: 3,
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/gQdXP4qPNl1IVCWRcH6M4Q/l.jpg"
    }, {
        name: "Joe's Shanghai",
        place: {
            address: "9 Pell St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.714601, -73.997761]
        },
        cuisine: "Shanghainese, Dim Sum",
        price: 2,
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/0VV8b_PdmKnXcJ-ryXlGBw/l.jpg"
    }, {
        name: "Cafe Katja",
        place: {
            address: "79 Orchard St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.717719, -73.990565]
        },
        cuisine: "German, Austrian",
        price: 2,
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/RXLtt93EJlMEjVwv2Ueczw/l.jpg"
    }, {
        name: "Rosanjin",
        place: {
            address: "141 Duane St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.716403, -74.007724]
        },
        cuisine: "Japanese",
        price: 3,
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/YkMJsSpVdfW0_EaNGburrA/l.jpg"
    }, {
        name: "Kittichai",
        place: {
            address: "60 Thompson St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.724014, -74.003242]
        },
        cuisine: "Thai",
        price: 4,
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/mjoCWX7xdIWWfYwspl9TuQ/l.jpg"
    }, {
        name: "Bianca Restaurant",
        place: {
            address: "5 Bleecker St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.725495, -73.992662]
        },
        cuisine: "Italian",
        price: 2,
        image: "https://s3-media4.fl.yelpcdn.com/bphoto/3glESJvos_cumJXOyTM2AQ/l.jpg"
    }, {
        name: "Rayuela",
        place: {
            address: "165 Allen St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.721266, -73.989756]
        },
        cuisine: "Spanish, Latin American",
        price: 3,
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/_x433GViFkBQUk7M2Q1BwQ/l.jpg"
    }, {
        name: "Mas Farmhouse",
        place: {
            address: "39 Downing St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.729269, -74.003875]
        },
        cuisine: "New American, French",
        price: 4,
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/SpNb0ZXIxVnQkyowD-BtPA/l.jpg"
    }, {
        name: "Xe Lua",
        place: {
            address: "86 Mulberry St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.716544, -73.998626]
        },
        cuisine: "Vietnamese",
        price: 1,
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/uxsx0XTyZYT6EZ0b0QEyIg/l.jpg"
    }],
    activity: [{
        name: "Mahayana Temple Buddhist Association",
        place: {
            address: "133 Canal St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.716291, -73.995315]
        },
        age_range: "All",
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/eDZsSguQzvkl0iJhfLR_PA/l.jpg"
    }, {
        name: "South Street Seaport",
        place: {
            address: "19 Fulton St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.707119, -74.003602]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/_jg1ZwsXikMtfkC3yuiBJQ/l.jpg"
    }, {
        name: "Ground Zero",
        place: {
            address: "1 Liberty Plz Lbby 2",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.709329, -74.013120]
        },
        age_range: "All",
        image: "https://s3-media4.fl.yelpcdn.com/bphoto/5Kr-uhwE5k_Tt9CvGfSGpw/l.jpg"
    }, {
        name: "National September 11th Memorial & Museum",
        place: {
            address: "1 Albany St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.709189, -74.013157]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/gu_txBwP4MM0eU8DJb3l9A/l.jpg"
    }, {
        name: "Battery Park",
        place: {
            address: "State St & Battery Pl",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.704531, -74.014334]
        },
        age_range: "All",
        image: "https://s3-media4.fl.yelpcdn.com/bphoto/kEHzFgzZHPoO2Qztctn69Q/l.jpg"
    }, {
        name: "Staten Island Ferry Whitehall Terminal",
        place: {
            address: "4 S St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.729125, -73.989650]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/f_BnSBMcmhcf02S9h57i5Q/l.jpg"
    }, {
        name: "Chinatown Ice Cream Factory",
        place: {
            address: "65 Bayard St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.715323, -73.998190]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/H-57bJWdkIAZPN1_crPFxA/l.jpg"
    }, {
        name: "Blue Man Group",
        place: {
            address: "434 Lafayette St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.729373, -73.992104]
        },
        age_range: "All",
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/nce0KIqPs-ajm2Ge2Of1pA/l.jpg"
    }, {
        name: "Scott's Pizza Tours",
        place: {
            address: "244 5th Ave",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.744610, -73.987708]
        },
        age_range: "All",
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/oWaAiYL93xlE1yhvy0ssIw/l.jpg"
    }, {
        name: "Apple Store",
        place: {
            address: "103 Prince St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.724918, -73.999144]
        },
        age_range: "All",
        image: "http://cbsnews1.cbsistatic.com/hub/i/2011/05/19/cf8d47be-a643-11e2-a3f0-029118418759/FifthAve-Apple.jpg"
    }, {
        name: "Brooklyn Bridge Park",
        place: {
            address: "Pier 1",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.702225, -73.996563]
        },
        age_range: "All",
        image: "https://s3-media3.fl.yelpcdn.com/bphoto/MC9G6eP7YeWYH29XYlTNkA/l.jpg"
    }, {
        name: "Ellis Island Immigration Museum",
        place: {
            address: "Ellis Island",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.699297, -74.040317]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/ikUsgG4B75UdryrFn2HAiw/l.jpg"
    }, {
        name: "Washington Square Park",
        place: {
            address: "1 Washington Sq E",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.732204, -73.998649]
        },
        age_range: "All",
        image: "https://s3-media2.fl.yelpcdn.com/bphoto/7vKSqmapAZY8iGGo6YcHzA/l.jpg"
    }, {
        name: "Union Square Holiday Market",
        place: {
            address: "Union Sq & W 14th St",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.733615, -73.987995]
        },
        age_range: "All",
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/FhM0MUfJEGWuPrmLZTY6Pg/l.jpg"
    }, {
        name: "Strand Bookstore",
        place: {
            address: "828 Broadway",
            city: "New York",
            state: "NY",
            phone: "123-456-7890",
            location: [40.733274, -73.990870]
        },
        age_range: "All",
        image: "https://s3-media1.fl.yelpcdn.com/bphoto/fi-Iezn0TMnMWGQn61TXaA/l.jpg"
    }]
};

db.sync({force: true})
.then(function () {
  console.log("Dropped old data, now inserting data");
  return Promise.map(Object.keys(data), function (name) {
    return Promise.map(data[name], function (item) {
      return db.model(name)
      .create(item, {
        include: [Place]
      });
    });
  });
})
.then(function () {
  console.log("Finished inserting data (press ctrl-c to exit)");
})
.catch(function (err) {
  console.error('There was totally a problem', err, err.stack);
});
