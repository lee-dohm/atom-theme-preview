# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :theme_preview,
  ecto_repos: [ThemePreview.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :theme_preview, ThemePreviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yEVlORdqmVYQKz10hFgLFqFnr7MFE28JdQrjOBcDJoem9SpC3hWwl0TrnXOCuI+6",
  render_errors: [view: ThemePreviewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ThemePreview.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
