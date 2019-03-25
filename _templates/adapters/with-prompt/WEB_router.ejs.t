---
to: "<%= type == 'web' ? 'src/adapters/web/lib/router.js' : null %>"
---
import { Router as _router } from 'express';

function wrap(handler) {
    return async function(req, res, next) {
        try {
            await handler(req, res);
        }catch(e) {
            next(e);
        }
    }
}

export default class Router {
    constructor() {
        this.router = _router();
    }

    get(path, handler) {
        this.router.get(path, wrap(handler));
    }

    post(path, handler) {
        this.router.post(path, wrap(handler));
    }

    put(path, handler) {
        this.router.put(path, wrap(handler));
    }

    patch(path, handler) {
        this.router.patch(path, wrap(handler));
    }

    delete(path, handler) {
        this.router.delete(path, wrap(handler));
    }

    express() {
        return this.router;
    }
}