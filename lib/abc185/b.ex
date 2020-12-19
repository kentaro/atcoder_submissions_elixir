defmodule Abc185.B.Main do
  def read_single() do
    IO.read(:line) |> String.trim() |> String.to_integer()
  end

  def read_list() do
    IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
  end

  def read_nested_list_for(length) do
    1..length
      |> Enum.reduce([], fn _, acc ->
        list =
          IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)
        [list | acc]
      end)
      |> Enum.reverse()
  end

  def main() do
    [size, times_to_visit, time_to_home] = read_list()
    durations = read_nested_list_for(times_to_visit)

    solve(size, time_to_home, durations)
    |> IO.puts()
  end

  def solve(size, time_to_home, durations) do
    [remaining, prev_time] = Enum.reduce(durations, [size, 0], fn d, [current, prev_time] ->
      [s, e] = d
      cond do
        current <= 0 -> [-1, e]
        true ->
          remaining = current - (s - prev_time)
          cond do
            remaining <= 0 -> [-1, e]
            true ->
              remaining = Enum.min([
                (current - (s - prev_time) + (e - s)),
                size
              ])
              [remaining, e]
          end
      end
    end)
    if remaining - (time_to_home - prev_time) > 0, do: "Yes", else: "No"
  end
end
