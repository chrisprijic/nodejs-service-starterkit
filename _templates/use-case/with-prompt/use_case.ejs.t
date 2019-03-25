---
to: src/app/<%= resource %>/<%= use_case %>.js
---
<%
function correctName(name) {
    let init = name.replace(/(\_\w)/g, function(m){return m[1].toUpperCase();});
    return init.charAt(0).toUpperCase() + init.slice(1);
}
Resource = correctName(resource);
UseCase = correctName(use_case);
%>
import <%= Resource %> from '../../domain/<%=resource %>';

export default class <%= UseCase %> {
    constructor() {

    }

    async execute(input) {

    }
}