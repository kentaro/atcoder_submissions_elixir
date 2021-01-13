defmodule Abc188.B.Main do
  def main() do
    read_single()
    read_nested_list_for(2)
    |> solve()
    |> IO.puts()
  end

  defp solve([a, b]) do
    dot(a, b, 0)
    |> case do
      0 -> "Yes"
      _ -> "No"
    end
  end

  defp dot([], [], acc) do
    acc
  end

  defp dot([h1 | t1], [h2 | t2], acc) do
    dot(t1, t2, acc + h1 * h2)
  end

  defp read_single() do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
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
