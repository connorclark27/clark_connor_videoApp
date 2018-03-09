var express = require('express');
var connection = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();

//middleware goes here. It's in the middle of the process -> after the request, before the response
//
//parse the request, make sure we can convert incoming data into something Express can use
router.use(bodyParser.urlencoded({ extended : false }));
router.use(bodyParser.json());

router.use((req, resp, next) => {
	var now = new Date();
	var timestamp = now.toLocaleString('en-us', {
		hour: "numeric",
		minute: "numeric",
		hour12 : true
	});

	console.log(`you made a ${req.method} call!`);
	console.log(`you made a call @ ${timestamp}`);
	//console.log(req);
	next(); // run the next method (get, put,)
});

router.get('/:id', (req, res) => {
	// do a request for json data here
	let currentCar = req.params.dataID;
	console.log(req.params.id);
	console.log('hit an api route with params');

	connection.query(`SELECT * FROM mainmodel WHERE model="${req.params.id}"`, (err, result, fields) => {
		if (err) {
			throw err; console.log(err);
		} else {
			res.json({
				mainheading : result[0].modelName,
				carData : result
			});
		}
	});
});

router.delete('/:id', (req, res) => {
	console.log('hit the delete route');

	connection.query(`DELETE from mainmodel WHERE model="${req.params.id}"`, (err, result) => {
		if (err) {
			throw err; console.log(err);
		} else {
			res.json(result); // send back whatever this is
		}
	});
});

router.post('/:id', (req, res) => {
	console.log(`hit the post route`);

	connection.query(`INSERT into mainmodel (id, genre, movieName, year, movieDetails, imgPath) VALUES (NULL,
							"${req.body.genre}",
							"${req.body.movieName}",
							"${req.body.year}",
							"${req.body.movieDetails}",
							"${req.body.imgPath}");`, (err, data) => {
		if (err) {
			throw(err);
		} else {
			res.json(data);
		}
	})
});

module.exports = router;
