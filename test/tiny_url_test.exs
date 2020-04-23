defmodule TinyUrlTest do
  use ExUnit.Case
  doctest TinyUrl

  test "greets the world" do
    assert TinyUrl.hello() == :world
  end
end
