defmodule Abc186.B.Main do
  def main() do
    [h, _] = read_list()
    read_nested_list_for(h)
    |> solve()
    |> IO.puts()
  end

  defp solve(m) do
    m
    |> Enum.map(&Enum.min/1)
    |> Enum.min()
    |> align_to(m)
  end

  defp align_to(min, m) do
    m
    |> Enum.reduce(0, fn (a, acc) ->
      diff_sum = Enum.reduce(a, 0, fn (e, acc) ->
        acc + (e - min)
      end)
      acc + diff_sum
    end)
  end

  defp read_list() do
    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end

  defp read_nested_list_for(length) do
    1..length
      |> Enum.reduce([], fn _, acc ->
        list =
          IO.read(:line)
          |> String.trim()
          |> String.split(" ")
          |> Enum.map(&String.to_integer/1)
        [list | acc]
      end)
      |> Enum.reverse()
  end
end
