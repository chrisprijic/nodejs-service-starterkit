---
to: "<%= type == 'web' ? 'index.js' : null %>"
---
// sample index file using the web adapter
import router from './src/adapters/web/routes';
import express from 'express';

export default function start() {
    let app = express();
    app.use('/', router());

    let port = '8000';
    app.listen(port, () => {
        console.log('app listening on port :' + port);
    });

    return app;
}

start();