# https://atcoder.jp/contests/abs/tasks/arc089_a

n = gets.chomp.to_i
coordinate = []

n.times do
  coordinate << gets.chomp.split(' ').map(&:to_i)
end

prev_x, prev_y = 0, 0

coordinate.each do |co|
  if ((prev_x + prev_y) - (co[1] + co[2])).abs > co[0]
    puts 'No'
    exit
  end
  if co[0].odd?
    unless (co[1] + co[2]).odd?
      puts 'No'
      exit
    end
  else
    unless (co[1] + co[2]).even?
      puts 'No'
      exit
    end
  end
  prev_x = co[1]
  prev_y = co[2]
end
puts 'Yes'
