defmodule Abc197.A.Main do
  def main() do
    IO.read(:line)
    |> String.trim()
    |> String.split("", trim: true)
    |> solve()
    |> IO.puts()
  end

  defp solve(slist) do
    [tl(slist), hd(slist)]
    |> List.flatten()
    |> Enum.join("")
  end
end
