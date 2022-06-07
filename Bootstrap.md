# Bootstrapping from empty

See [instructions](https://docs.docker.com/compose/rails/) on the Docker side. A few things need to be changed:

1. In `docker-compose.yaml` name the rails service `api`, not `web`.
2. Before [building the project](https://docs.docker.com/compose/rails/#build-the-project), run `docker-compose build`.
3. Change the "build the project" command to make an api project: `docker-compose run --no-deps api rails new . --api --force --database=postgresql`

# Using UUID as PK

See [here](https://pawelurbanek.com/uuid-order-rails)
