# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tinyurl,
  namespace: TinyUrl,
  ecto_repos: [TinyUrl.Repo]

# Configures the endpoint
config :tinyurl, TinyUrlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "thGm5GyM1X71zqOgNhjFauT3zQaQnW1xaWMGGgUxE+U174AVJubmQ0Hnr4mTTunl",
  render_errors: [view: TinyUrlWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TinyUrl.PubSub,
  live_view: [signing_salt: "aNATjzio"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
