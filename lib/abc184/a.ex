defmodule Abc184.A.Main do
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
        [list | acc]
      end)
      |> Enum.reverse()
  end

  def main() do
    read_nested_list_for(2)
    |> solve()
    |> IO.puts()
  end

  def solve(m) do
    [a, b] = Enum.at(m, 0)
    [c, d] = Enum.at(m, 1)
    a * d - b * c
  end
end
