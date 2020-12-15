defmodule Mix.Tasks.Atcoder.CheckOj do
  use Mix.Task

  def run(_) do
    case System.find_executable("oj") do
      nil -> raise("Couldn't find `oj` command.")
      _ -> "noop"
    end
  end
end
