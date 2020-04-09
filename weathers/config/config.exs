import Config

config :weathers, Weathers.Repo,
  database: "weathers_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :weathers,
  ecto_repos: [Weathers.Repo]
