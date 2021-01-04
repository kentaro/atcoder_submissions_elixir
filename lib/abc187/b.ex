defmodule Abc187.B.Main do
  def main() do
    read_single()
    |> read_nested_list_for()
    |> solve()
    |> IO.puts()
  end

  defp solve(coords) do
    coords
    |> combination(2)
    |> Enum.map(&gradient_for/1)
    |> Enum.filter(&(&1 >= -1 and &1 <= 1))
    |> Enum.count()
  end

  defp read_single() do
    IO.read(:line) |> String.trim() |> String.to_integer()
  end

  defp read_nested_list_for(length) do
    1..length
      |> Enum.reduce([], fn _, acc ->
        list =
          IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
        [list | acc]
      end)
      |> Enum.reverse()
  end

  defp gradient_for([i, j]) do
    (Enum.at(j, 1) - Enum.at(i, 1)) / (Enum.at(j, 0) - Enum.at(i, 0))
  end

  defp combination(_, 0), do: [[]]
  defp combination([], _), do: []
  defp combination([x | xs], n) do
    for(y <- combination(xs, n - 1), do: [x | y]) ++ combination(xs, n)
  end
end
