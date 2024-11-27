// Import express.js
const express = require("express");

// Create express app
var app = express();

app.set('view engine', 'pug');
app.set('views', './app/views');

// Add static files location
app.use(express.static("static"));

// Get the functions in the db.js file to use
const db = require('./services/db');

  app.get("/", function(req, res) {
    var sql = 'SELECT * FROM products';
    db.query(sql).then(results => {
        // Send the data to the Pug template
        res.render("index", { data: results });
    }).catch(err => {
        console.error(err);
        res.status(500).send("Error fetching products.");
    });
});

// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});
