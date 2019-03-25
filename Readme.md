# Nodejs Service Starter-Kit

A starter-kit to get you started with creating services using node.js!

__Utilize Clean Architecture__: Using this setup, separate your concerns and develop software in an extensible way.

## Installation

1. Clone this repository
2. remove the .git folder
3. ???
4. Profit!

## Commands

```bash
npm start              // runs index.js using es-modules (node -r esm index.js)
npm test               // runs tests using jest (anything -test.js)
npm run gen:adapter    // prompts for adapter generation
npm run gen:controller // prompts for controller generation
npm run gen:use-case   // prompts for use-case generation
```

## Tech Stack

__express__: Express for routing and HTTP Server. Middleware included when used; cors, body-parser (json), compression, and status-moniotor. Extensible statuses through HTTP-Status.

__knex__: Query-generation library. Chosen over an ORM to provide more capabilities and faster queries.

__jest__: Testing library. Babel added to repo to support es-modules while testing. Unification with the rest of testing JS code for Orbee.

__hygen__: templating library, used for generating scaffolds for code (adapters, controllers, use-cases, etc.).

## Questions?

Submit an issue!