defmodule GitInsightsWeb.PageController do
  use GitInsightsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
