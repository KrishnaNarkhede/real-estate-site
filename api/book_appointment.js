// /api/book_appointment.js

const mysql = require('mysql');

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,  
    password: process.env.DB_PASSWORD,  
    database: process.env.DB_DATABASE
});

db.connect((err) => {
    if (err) {
        console.error('Database connection failed:', err.stack);
        return;
    }
    console.log('Connected to MySQL database');
});

module.exports = (req, res) => {
    if (req.method === 'POST') {
        const { name, email, mobile, service_type, appointment_date, appointment_time, message } = req.body;

        const sql = "INSERT INTO appointments (name, email, mobile, service_type, appointment_date, appointment_time, message) VALUES (?, ?, ?, ?, ?, ?, ?)";

        db.query(sql, [name, email, mobile, service_type, appointment_date, appointment_time, message], (err) => {
            if (err) {
                console.error("Error executing query", err);
                res.status(500).send("Error booking appointment");
            } else {
                res.send("Appointment booked successfully!");
            }
        });
    } else {
        res.setHeader('Allow', ['POST']);
        res.status(405).end(`Method ${req.method} Not Allowed`);
    }
};
