# rocketpay
Back-end project created with Elixir for the Next Level Week fourth edition of Rocketseat.

This project was created using the following command
```bash
mix phx.new rocketpay --no-webpack --no-html
```
The project divide its layers in folders referencing the project's name, for example under ./lib:
- rocketpay (Domain layer)
- rocketpay_web (Application/Host layer)

## Restore project on local machine
In order to restore the project run: `mix deps.get`

Keep our postgres server running with Docker using
```
# First time
docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

# After the first time the container is created, then you just need to run
docker start postgres
```

## Running the project
In order to execute the project run
```
mix phx.server
```
The command above will run the Phoenix server.

Access the running service on page http://localhost:4000/dashboard/

## Running migrations
With the DB up and running use `mix ecto.migrate` to run the migrations.

Creating a new migration to be used with a new schema and changeset:
```
mix ecto.gen.migration migration_name
# Example
mix ecto.gen.migration create_users_table
```
After a new migration is created and defined we should run
```
mix ecto.migrate
```

## Running unit tests
```
mix test
```

## Dependencies
[Elixir](https://elixir-lang.org/install.html) 1.11.3 (compiled with Erlang/OTP 21)

[Phoenix Framework](https://www.phoenixframework.org/):
```bash
mix archive.install hex phx_new 1.5.7
```

### Roadmap

We have planned some improvements:

* [ ] Fix Deposit and Withdraw actions to display updated account after operation. Currently the account shows the old status before the operation.
* [ ] Fix Operation module error message that displays "Invalid deposit value!" but should deal with deposit and withdraw messages