var app = require('express')();
var server = require('http').Server(app);

app.get('/', (req, res) => {
    res.json({
        message: 'Hello World'
    });
});

server.listen(8000, () => {
    console.log('server is listening on port 8000');
});
