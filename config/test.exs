use Mix.Config

# Configure your database
config :git_insights, GitInsights.Repo,
  username: "postgres",
  password: "postgres",
  database: "git_insights_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :git_insights_web, GitInsightsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
