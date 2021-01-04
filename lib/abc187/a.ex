defmodule Abc187.A.Main do
  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  def solve(list) do
    list
    |> Enum.map(&sum_of/1)
    |> Enum.max()
  end

  defp read_list() do
    IO.read(:line) |> String.trim() |> String.split(" ")
  end

  defp sum_of(number_str) do
    String.split(number_str, "", trim: true)
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(0, fn (i, acc) ->
      acc + i
    end)
  end
end
