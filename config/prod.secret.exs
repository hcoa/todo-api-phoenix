use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :todo_api, TodoApi.Endpoint,
  secret_key_base: "5Acb+0ufQZRv+aEdrEaDrjZxZ8Nl8gFKMkL1kCCiQo0YfZgoJGvbj/5W+1ZPeaN4"

# Configure your database
config :todo_api, TodoApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  hostname: "db1host",
  username: System.get_env("DB_USER"),
  password: System.get_env("DB_PASS"),
  database: "todo_api_prod",
  pool_size: 20