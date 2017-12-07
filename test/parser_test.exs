defmodule ParserTest do
  use ExUnit.Case
  doctest Servy

  alias Servy.Parser

  test "the truth" do
    header_lines = ["A: 1", "B: 2"]

    headers = Parser.parse_headers(header_lines, %{})

    assert headers == %{"A"=>"1", "B"=>"2"}
  end
end
