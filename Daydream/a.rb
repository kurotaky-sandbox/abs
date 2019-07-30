# https://atcoder.jp/contests/abs/tasks/arc065_a

s = gets.chomp

s = s.reverse

100000.times do
  s.slice!(0, 7) if s.start_with?('remaerd')
  s.slice!(0, 5) if s.start_with?('maerd')
  s.slice!(0, 6) if s.start_with?('resare')
  s.slice!(0, 5) if s.start_with?('esare')
  break if s.size == 0
end

if s.size == 0
  puts 'YES'
else
  puts 'NO'
end
