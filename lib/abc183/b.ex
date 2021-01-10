defmodule Abc183.B.Main do
  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([sx, sy, gx, gy]) do
    dx = gx - sx
    sx + dx * (sy / (sy + gy))
  end

  defp read_list() do
    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
