defmodule Weathers.Repo do
  use Ecto.Repo,
    otp_app: :weathers,
    adapter: Ecto.Adapters.Postgres
end
