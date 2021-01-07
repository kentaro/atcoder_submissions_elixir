defmodule Abc184.B.Main do
  def main() do
    [_, x] = read_list()
    read_single()
    |> solve(x)
    |> IO.puts()
  end

  defp solve(s, x) do
    String.split(s, "", trim: true)
    |> Enum.reduce(x, fn c, acc ->
      case c do
        "o" -> acc + 1
        "x" -> Enum.max([0, (acc - 1)])
      end
    end)
  end

  defp read_single() do
    IO.read(:line) |> String.trim()
  end

  defp read_list() do
    IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
  end
end
