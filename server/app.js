import express from "express";
import cors from "cors";
import admin from "./routes/admin.js";
import paintings from "./routes/paintings.js";
import painters from "./routes/painters.js";

const app = express()
const port = 3002;

app.use(
    cors({
        origin: ["http://localhost:5173/"],
    })
);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/admin", admin);
app.use("/paintings", paintings);
app.use("/painters", painters);

app.use((err, req, res, next) => {
    if (err.name === "UnauthorizedError") {
        return res.status(401).json({ msg: "Vous ne pouvez pas consulter cette page" });
    }
    if (err.name === "ErrorDocument") {
        return res.status(404).json({ msg: "Page introuvable" });
    }
    if (err.status == undefined) {
        return res.status(500).json({ error: err.message });
    }
    return res.status(err.status).json({ error: err.message });
});

app.listen(port, () => {
    console.log(`App listening on port ${port}`);
});
