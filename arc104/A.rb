# https://atcoder.jp/contests/arc104/tasks/arc104_a

A, B = gets.split.map(&:to_i)
X = (A + B) / 2
Y = A - X

puts [X, Y].join(" ")
