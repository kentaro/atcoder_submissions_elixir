O = gets.chomp.split('')
E = gets.chomp.split('')

ans = ''
O.each_with_index do |c, i|
  E[i] ? ans << c << E[i] : ans << c
end

puts ans
