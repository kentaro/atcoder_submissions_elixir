defmodule Abc186.A.Main do
  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([n, w]) do
    div(n, w)
  end

  defp read_list() do
    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
