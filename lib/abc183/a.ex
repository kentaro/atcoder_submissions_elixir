defmodule Abc183.A.Main do
  def main() do
    read_single()
    |> solve()
    |> IO.puts()
  end

  defp solve(n) do
    relu(n)
  end

  defp relu(n) when n >= 0 do
    n
  end

  defp relu(n) when n < 0 do
    0
  end

  defp read_single() do
    IO.read(:line)
    |> String.trim()
    |> String.to_integer()
  end
end
