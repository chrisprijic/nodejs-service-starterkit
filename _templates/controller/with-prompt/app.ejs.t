---
to: src/app/<%= name %>/index.js
---

import GetAll<%= Name %>s from './get_all_<%= name %>s';
import Create<%= Name %> from './create_<%= name %>';
import Get<%= Name %> from './get_<%= name %>';
import Update<%= Name %> from './update_<%= name %>';
import Delete<%= Name %> from './delete_<%= name %>';

module.exports = {
    GetAll<%= Name %>s,
    Create<%= Name %>,
    Get<%= Name %>,
    Update<%= Name %>,
    Delete<%= Name %>
}