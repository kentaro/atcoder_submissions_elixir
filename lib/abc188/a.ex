defmodule Abc188.A.Main do
  def main() do
    read_list()
    |> solve()
    |> IO.puts()
  end

  defp solve([x, y]) do
    add3(x, y)
  end

  defp add3(x, y) when x > y do
    greater?(y + 3, x)
  end

  defp add3(x, y) when y > x do
    greater?(x + 3, y)
  end

  defp greater?(x, y) when x > y do
    "Yes"
  end

  defp greater?(x, y) when y >= x do
    "No"
  end

  defp read_list() do
    IO.read(:line)
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
