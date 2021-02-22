defmodule TinyUrlWeb.UrlController do
  use TinyUrlWeb, :controller

  # TODO: implement API to create tiny url
  def generate(conn, _params) do
    render(conn, "generate.json")
  end

  # TODO: implement API to redirect tiny url to original url
  def redirect(conn, _params) do
  end
end
