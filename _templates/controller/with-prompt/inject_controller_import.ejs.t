---
inject: true
to: src/adapters/web/routes.js
skip_if: "import .* from '\\./controllers/<%= name %>'"
after: "// controller imports"
---
import <%= Name %>Controller from './controllers/<%= name %>';