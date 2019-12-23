a, b, c = gets.split.map(&:to_i)

ans = [a+b, a+c, b+c].min
puts ans
