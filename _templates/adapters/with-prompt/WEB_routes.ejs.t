---
to: "<%= type == 'web' ? 'src/adapters/web/routes.js' : null %>"
---
import { Router } from 'express';
import cors from 'cors';
import statusMonitor from 'express-status-monitor';
import bodyParser from 'body-parser';
import compression from 'compression';

// controller imports

export default function router() {
    const router = Router();
    
    router
        .use(cors())
        .use(bodyParser.json())
        .use(compression())
        .use(statusMonitor());

    const apiRouter = Router();

    // controller routes

    router.use('/api', apiRouter);

    // return final router
    return router;
}