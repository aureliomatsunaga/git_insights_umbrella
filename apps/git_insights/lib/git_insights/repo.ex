defmodule GitInsights.Repo do
  use Ecto.Repo,
    otp_app: :git_insights,
    adapter: Ecto.Adapters.Postgres
end
