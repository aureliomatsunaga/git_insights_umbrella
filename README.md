# GitInsights.Umbrella

## application setup

0. (optional) Get inside the container

`docker-compose run --rm web bash`

1. install dependencies

`docker-compose run --rm web mix deps.get`

   or in case you did step 0:

`mix deps.get`


2. lift up the database and app server

`docker-compose up web`

3. create your database

`docker-compose run --rm web mix ecto.create`

   or in case you did step 0:

`mix ecto.create`

4. run the migrations

`docker-compose run --rm web mix ecto.migrate`

5. seed your database

`docker-compose run --rm web mix run apps/omnibus/priv/repo/seeds.exs`

## how to run tests

`docker-compose run --rm tests`

## how run specific tests

`docker-compose run --rm bash`

then, inside container's bash, choose your test's path and run

`mix test path/to/test.exs`

## how to see logs

`docker-compose logs -f`

## Deploy to production
We are deploying to heroku pipelines. When a pull request is created, a new review-app is created at heroku pipeline and will migrate the database.
When merge any PR in master branch will automatically deploy to staging app, but the migrations need to be run in the console.
After promote to production, need run the migration in console too.

## coding standards

We follow the elixir style guide.

Before commit your changes, run the following commands:

`mix format`

## how to write documentation
https://hexdocs.pm/elixir/writing-documentation.html
