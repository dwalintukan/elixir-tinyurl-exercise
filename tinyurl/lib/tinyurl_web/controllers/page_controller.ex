defmodule TinyUrlWeb.PageController do
  use TinyUrlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
