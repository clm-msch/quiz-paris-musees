import express from 'express'
import cors from 'cors'

import admin from './routes/admin.js'
import paintings from './routes/paintings.js'


const app = express()
const port = 3002;

app.use(cors({}));
app.use(express.json())
app.use(express.urlencoded({ extended: true }))


app.use('/admin', admin)


// Middleware pour la gestion d'erreurs
app.use((err, req, res, next) => {
    if (err.name === "UnauthorizedError") {
        return res.status(401).json({ msg: "Vous n'avez pas accès à cette page" });
    }
    if (err.name === "ErrorDocument") {
        return res.status(404).json({ msg: "Cette page n'existe pas" });
    }
    if (err.status == undefined) {
        return res.status(500).json({ error: err.message });
    }
    return res.status(err.status).json({ error: err.message });
});


// lancement du serveur
app.listen(port, () => {
    console.log(`App listening on port ${port}`);
});