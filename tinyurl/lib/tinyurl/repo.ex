defmodule TinyUrl.Repo do
  use Ecto.Repo,
    otp_app: :tinyurl,
    adapter: Ecto.Adapters.Postgres
end
