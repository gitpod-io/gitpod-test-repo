import * as express from 'express';

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
    let result = "Super cool text!"
    console.log(result);
    res.status(200).send(result);
});

app.get("/miau(\/files*)?", (req: express.Request, res: any) => {
    let result = "Dynamic URL: " + req.originalUrl;
    console.log(result);
    res.status(200).send(result);
});

const httpServer = app.listen(5555, () => {
    console.log('Server listening on port %s.', httpServer.address().port);
});
