# https://atcoder.jp/contests/abs/tasks/arc065_a

s = gets.chomp

words = %w|dream dreamer erase eraser|

return puts 'NO' unless s.start_with?('dream', 'erase')
return puts 'NO' if s.count("a-z", "^ademrs") > 0

puts 'YES'
