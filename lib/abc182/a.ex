defmodule Abc182.A.Main do
  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([a, b]) do
    (2 * a + 100) - b
  end

  defp read_list() do
    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
