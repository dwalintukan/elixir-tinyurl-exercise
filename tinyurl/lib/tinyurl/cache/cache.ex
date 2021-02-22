defmodule TinyUrl.Cache.CacheStore do
  @moduledoc """
  Reference:
  https://elixirschool.com/en/lessons/specifics/ets/
  """

  def init() do
    :ets.new(:urls, [:set, :public])
  end

  # TODO: Implement cache setter
  def set() do
  end

  # TODO: Implement cache
  def get() do
  end
end
