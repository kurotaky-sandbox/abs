# https://atcoder.jp/contests/abs/tasks/abc088_b

n = gets.chomp.to_i
cards = gets.chomp.split(' ').map(&:to_i)

alice, bob = [], []

cards_desc = cards.sort {|a, b| b <=> a }

1.upto(cards_desc.size) do |i|
  if i.odd?
    alice << cards_desc.shift
  else
    bob << cards_desc.shift
  end
end

score = (alice.inject(:+) - bob.inject(:+)).abs
puts score
