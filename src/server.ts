const express = require('express');

const app = express();

app.use(function (req: any, res: any, next: any) {
    res.setHeader('X-Powered-By', 'Rainbows');
    console.log("x-port: " + req.headers['x-port']);
    console.log("x-path: " + req.headers['x-path']);
    next();
})

app.get("/", (req: any, res: any) => {
    let result = "Received a GET request on /";
    console.log(result);
    res.status(200).send(result);
});
app.get("/test", (req: any, res: any) => {
    let result = "Received a GET request on /test";
    console.log(result);
    res.status(200).send(result);
});

const httpServer = app.listen(3333, () => {
    console.log('Server listening on port %s.', httpServer.address().port);
});
