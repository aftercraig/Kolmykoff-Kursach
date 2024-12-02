const express = require("express");
const bodyParser = require("body-parser");
const sqlite3 = require("sqlite3").verbose();
const path = require("path");

const app = express();
const db = new sqlite3.Database("./server/db/database.sqlite");

app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, "../public")));

db.run(`
    CREATE TABLE IF NOT EXISTS exams (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        subject TEXT NOT NULL,
        date TEXT NOT NULL,
        time TEXT NOT NULL
    )
`);

app.get("/api/exams", (req, res) => {
    db.all("SELECT * FROM exams", [], (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
        } else {
            res.json(rows);
        }
    });
});

app.post("/api/exams", (req, res) => {
    const { subject, date, time } = req.body;
    const query = `INSERT INTO exams (subject, date, time) VALUES (?, ?, ?)`;
    db.run(query, [subject, date, time], function (err) {
        if (err) {
            res.status(500).json({ error: err.message });
        } else {
            res.status(201).json({ id: this.lastID });
        }
    });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Сервер запущен на http://localhost:${PORT}`);
});