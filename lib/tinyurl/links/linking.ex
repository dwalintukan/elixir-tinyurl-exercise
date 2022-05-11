defmodule TinyUrl.Links.Linking do
  @moduledoc """
  Explain and code the necessary Context business logic for the Tiny URL service.

  Notes:
  1. How do you get a short_link?
  2. What do you do with a short_link?
  """

  # TODO: Implement context functions here

  # You may use this as a temporary hashing solution for this exercise.
  # Not a real/good hashing solution!
  defp encode_original_link(link), do: :crypto.hash(:sha256, link) |> Base.encode16()
end
