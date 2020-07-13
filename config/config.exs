# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :statuspage,
  ecto_repos: [Statuspage.Repo]

# Configures the endpoint
config :statuspage, StatuspageWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m5/cu6d+cWWpDqbIdXIhU1hDiajopBgcTnzYtuy82TbIro0/OD1lNlT6Hu1eM/no",
  render_errors: [view: StatuspageWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Statuspage.PubSub,
  live_view: [signing_salt: "7IuJ5suJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
