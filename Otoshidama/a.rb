# https://atcoder.jp/contests/abs/tasks/abc085_c

n, y = gets.chomp.split(' ').map(&:to_i)

0.upto(n) do |i|
  0.upto(n - i) do |j|
    k = n - i - j
    if (i * 10000 + j * 5000 + k * 1000) == y
      puts "%s %s %s" % [i,j,k]
      exit
    end
  end
end

puts "-1 -1 -1"
