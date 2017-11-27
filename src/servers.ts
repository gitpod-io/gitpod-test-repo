const express = require('express');

const app = express();

app.get("/", (req: any, res: any) => {
    console.log("Received a GET request on /");
});
app.get("/test", (req: any, res: any) => {
    console.log("Received a GET request on /test");
});

const httpServer = app.listen(5555, () => {
    console.log('Server listening on port %s.', httpServer.address().port);
});
