var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT * FROM mainmodel', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('cars', {
        title: 'Flashback',
        message : "Kids Profile",
        carData : result
      });
    }
  });
});

module.exports = router;
