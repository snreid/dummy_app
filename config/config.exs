# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixnew,
  ecto_repos: [Phoenixnew.Repo]

# Configures the endpoint
config :phoenixnew, Phoenixnew.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Toi+s+CjTY5UC/BDeWgHBt70q0JGSLGQIr2UvrU1OUuGoHW9ANmyAtQYywoMPFjg",
  render_errors: [view: Phoenixnew.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixnew.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
