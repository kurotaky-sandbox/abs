n, a, b = gets.chomp.split(' ').map(&:to_i)

arr = []
ans = 0

range = 1..n
range.each do |num|
  split_nums = num.to_s.chars.map(&:to_i)
  split_nums_sum = split_nums.inject(:+)
  arr << split_nums.join.to_i if a <= split_nums_sum && split_nums_sum <= b
end

ans = arr.inject(:+)
puts ans
