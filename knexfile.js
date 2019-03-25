// Update with your config settings.

module.exports = {

    development: {
        client: 'postgresql',
        connection: process.env.DEV_PG_CONNECTION_STRING,
        pool: {
            min: 0,
            max: 10
        },
        migrations: {
            tableName: 'knex_migrations',
            directory: './config/db/migrations'
        }
    },

    test: {
        client: 'postgresql',
        connection: process.env.TEST_PG_CONNECTION_STRING,
        pool: {
            min: 0,
            max: 10
        },
        migrations: {
            tableName: 'knex_migrations',
            directory: './config/db/migrations'
        },
        seeds: {
            directory: './config/db/seeds'
        }
    },

    production: {
        client: 'postgresql',
        connection: process.env.PROD_PG_CONNECTION_STRING,
        pool: {
            min: 1,
            max: 30
        },
        migrations: {
            tableName: 'knex_migrations',
            directory: './config/db/migrations'
        }
    }
};