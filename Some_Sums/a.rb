n, a, b = gets.chomp.split(' ').map(&:to_i)

arr = []
ans = 0

range = 1..n
range.each do |num|
  split_nums = num.to_s.chars.map(&:to_i)
  arr << split_nums.join.to_i if a <= split_nums.sum && split_nums.sum <= b
end
ans = arr.sum

puts ans
