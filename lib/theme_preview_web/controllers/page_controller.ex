defmodule ThemePreviewWeb.PageController do
  use ThemePreviewWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
