const functions = require("firebase-functions");
const express = require("express");
const app = express();
const cors = require("cors");

app.use(cors());

app.get("/api", (req, res) => {
    res.send(["hello", "world"]);
})

exports.app = functions.https.onRequest(app);