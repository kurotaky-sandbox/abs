# https://atcoder.jp/contests/abs/tasks/arc065_a

s = gets.chomp

ans = s.gsub('eraser', '').gsub('erase', '').gsub('dreamer', '').gsub('dream', '')

if ans.empty?
  puts 'YES'
else
  puts 'NO'
end
