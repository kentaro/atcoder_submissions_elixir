defmodule Mix.Tasks.Atcoder.StartContest do
  use Mix.Task

  def run(args) do
    [contest] = args
    File.mkdir!("lib/#{contest}")
  end
end
