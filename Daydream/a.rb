# https://atcoder.jp/contests/abs/tasks/arc065_a

s = gets.chomp

2000.times do
  s.slice!(0, 6) if s.start_with?('eraser')
  s.slice!(0, 5) if s.start_with?('erase') && !s.start_with?('eraser')
  s.slice!(0, 5) if s.start_with?('dreameraser') || s.start_with?('dreamerased') || s.start_with?('dreamerasee')
  s.slice!(0, 5) if s.start_with?('dreamerase') && !s.start_with?('dreameraser')
  s.slice!(0, 7) if s.start_with?('dreamer') && s[7..9] != 'ase'
  s.slice!(0, 5) if s.start_with?('dream') && (s[5..7] != 'erd' || s[5..7] != 'ere')
  break if s.size == 0
end

if s.size > 0
  puts 'NO'
else
  puts 'YES'
end
