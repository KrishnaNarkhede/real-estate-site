const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const path = require('path');  
const dotenv = require('dotenv'); 

dotenv.config(); 

const app = express();
const port = process.env.PORT || 8080;

// Middleware to parse incoming form data
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Serve static files (HTML, CSS, JS) from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

// Create MySQL connection
const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,  
    password: process.env.DB_PASSWORD,  
    database: process.env.DB_DATABASE
});

// Connect to MySQL
db.connect((err) => {
    if (err) {
        console.error('Database connection failed:', err.stack);
        return;
    }
    console.log('Connected to MySQL database');
});

// Example endpoint for testing
app.get('/testget', (req, res) => {
    res.send("I am live on GET");
});

// Start server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
