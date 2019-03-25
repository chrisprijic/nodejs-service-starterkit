---
to: src/adapters/web/controllers/<%= name %>.js
---
import Status from 'http-status';
import Router from '../lib/router';

export default class <%= Name %>Controller {
    constructor() {

    }

    router() {
        const router = new Router();

        router.get('/',       this.index);
        router.get('/:id',    this.show);
        router.post('/',      this.create);
        router.put('/:id',    this.update);
        router.delete('/:id', this.delete);

        return router.express();
    }

    async index(req, res) {
        res.status(Status.OK).send("get all <%= name %>");
    }

    async show(req, res) {
        res.status(Status.OK).send("get one <%= name %>");

    }

    async create(req, res) {
        res.status(Status.OK).send("create one <%= name %>");

    }

    async update(req, res) {
        res.status(Status.OK).send("update one <%= name %>");

    }

    async delete(req, res) {
        res.status(Status.OK).send("delete one <%= name %>");

    }
}