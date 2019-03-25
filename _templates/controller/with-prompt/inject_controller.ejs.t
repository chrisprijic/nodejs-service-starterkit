---
inject: true
to: src/adapters/web/routes.js
skip_if: "apiRouter\\.use\\('/<%= name %>"
after: "\\s*// controller routes"
---
    apiRouter.use('/<%= name %>', (new <%= Name %>Controller()).router());