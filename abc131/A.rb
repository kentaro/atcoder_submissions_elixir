sa = gets.chomp.split('')
ans = false

sa.each_with_index do |e, i|
  break if i == sa.length - 1
  ans = true if sa[i] == sa[i + 1]
end

puts ans ? "Bad" : "Good"
