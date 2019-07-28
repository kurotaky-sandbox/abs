# https://atcoder.jp/contests/abs/tasks/abc085_c

n, y = gets.chomp.split(' ').map(&:to_i)

money_combination = []

0.upto(n) do |i|
  0.upto(n) do |j|
    k = n - i - j
    money_combination.push([[i, j, k], [10000, 5000, 1000]])
  end
end

money = money_combination.select{|x| (x[0][0] * x[1][0] + x[0][1] * x[1][1] + x[0][2] * x[1][2]) == y }

if money.empty?
  puts "-1 -1 -1"
else
  puts "%s %s %s" % money.take(1)[0][0]
end
