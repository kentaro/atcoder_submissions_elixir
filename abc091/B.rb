N = gets.to_i
ss = Array.new(N) { gets.chomp }
M = gets.to_i
ts = Array.new(M) { gets.chomp }

m = {}
ss.each {|s| m[s] ? m[s] += 1 : m[s] = 1 }
ts.each {|s| m[s] ? m[s] -= 1 : m[s] = -1}

key = ''
ans = 0
m.each do |k, v|
  if v >= ans
    ans = v
    key = k
  end
end

puts ans
