# https://atcoder.jp/contests/abs/tasks/abc085_b

n = gets.chomp.to_i
mochi_array = []
n.times do
  mochi_array.push(gets.chomp.to_i)
end

sorted_mochi = mochi_array.reverse.uniq
puts sorted_mochi.count
