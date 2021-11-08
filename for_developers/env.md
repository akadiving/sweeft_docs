---
layout: default
title: Environmental variables
nav_order: 2
has_children: false
permalink: /documentation/env.html
parent: Knowledge API
---

## Environmental Variables 📑

For complete setup, you will need environmental variables for database and graphql configuration

#### List of variables

| Name               | Description                       | Type                        |
| ------------------ | --------------------------------- | --------------------------- |
| NODE_ENV           | node env                          | development/production/test |
| DATABASE_HOST      | postgre database host             | string                      |
| DATABASE_USER      | postgre database user             | string                      |
| DATABASE_PASSWORD  | postgre database password         | string                      |
| DATABASE_NAME      | postgre working database name     | string                      |
| DATABASE_PORT      | postgre database port             | number                      |
| GRAPHQL_PLAYGROUND | enable/disable playground for gql | boolean                     |
| GRAPHQL_DEBUG      | enable/disable gql debug          | boolean                     |
| GRAPHQL_THEME      | playground theme                  | light/dark                  |

- For development proposes you can use `.env` file mentioned in [Setup](./setup.md)
- For a production build, you can use any option you like
