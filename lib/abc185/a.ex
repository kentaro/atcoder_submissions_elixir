defmodule Abc185.A.Main do
  def read_single() do
    IO.read(:line) |> String.trim() |> String.to_integer()
  end

  def read_list() do
    IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
  end

  def read_nested_list_for(length) do
    1..length
      |> Enum.reduce([], fn _, acc ->
        list =
          IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
        [acc | list]
      end)
  end

  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  def solve(list) do
    Enum.min(list)
  end
end
