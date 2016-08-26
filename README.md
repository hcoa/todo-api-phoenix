# TodoApi
This is a sample for todo api CRUD.

To start Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can go to [`localhost:4000/api/todos`](http://localhost:4000/api/todos) from browser.

## Run in docker with compose

`docker-compose` should be installed

Run todo_api and postgres db in detached mode 
```
docker-compose up -d
```

after create and migrate db
```
docker-compose run web mix do ecto.create, ecto.migrate
```

now you can create new items.
example with `curl`:
```
curl -XPOST -H 'Content-type: application/json' http://localhost:4000/api/todos --data '{"todo": {"description":"create todo", "complete":true}}'
```

turn off:
```
docker-compose down
```