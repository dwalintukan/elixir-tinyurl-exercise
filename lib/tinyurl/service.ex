defmodule TinyUrl.Service do
  # TODO: Implement short link response.
  def generate_short_link() do
  end

  # TODO: Implement ability to fetch original link.
  def fetch_original_link() do
  end

  # Not a real hashing solution! Just temporary for this exercise.
  defp encode_original_link(link), do: :crypto.hash(:sha256, link) |> Base.encode16()
end
