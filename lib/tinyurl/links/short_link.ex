defmodule TinyUrl.Links.ShortLink do
  use Ecto.Schema
  import Ecto.Changeset

  # TODO: implement schema
  schema "short_links" do
  end

  @doc false
  def changeset(short_link, attrs) do
    short_link
  end
end
