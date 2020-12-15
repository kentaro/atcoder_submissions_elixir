defmodule Mix.Tasks.Atcoder.AddTask do
  use Mix.Task

  @requirements ["atcoder.check_oj"]

  def run(args) do
    [contest, task] = args
    cmd = "oj"
    args = ["d", "https://atcoder.jp/contests/#{contest}/tasks/#{contest}_#{task}"]
    task_dir = "lib/#{contest}/#{task}"

    File.mkdir!(task_dir)
    case System.cmd(cmd, args, cd: task_dir) do
      {_, 0} -> "noop"
      {output, _} ->
        IO.puts(:stderr, output)
    end
    File.write("#{task_dir}/main.ex", File.read!("template.ex"))
  end
end
