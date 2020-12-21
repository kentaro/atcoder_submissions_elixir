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
    [battery_size, times_to_visit, time_to_home] = read_list()
    durations = read_nested_list_for(times_to_visit)

    solve(battery_size, time_to_home, durations)
    |> IO.puts()
  end

  def solve(battery_size, time_to_home, durations) do
    [remaining_battery_size, prev_time] = Enum.reduce_while(durations, [battery_size, 0], fn duration, [remaining_battery_size, prev_time] ->
      [start_time, end_time] = duration
      battery_size_at_start = remaining_battery_size - (start_time - prev_time)
      if battery_size_at_start <= 0 do
        {:halt, [battery_size_at_start, end_time]}
      else
        remaining_battery_size = Enum.min([
          (battery_size_at_start + (end_time - start_time)),
          battery_size
        ])
        {:cont, [remaining_battery_size, end_time]}
      end
    end)
    if remaining_battery_size - (time_to_home - prev_time) > 0, do: "Yes", else: "No"
  end
end
