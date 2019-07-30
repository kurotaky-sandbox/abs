# https://atcoder.jp/contests/abs/tasks/arc089_a

n = gets.chomp.to_i
coordinate = []

n.times do
  coordinate << gets.chomp.split(' ').map(&:to_i)
end

coordinate.each do |co|
  if co[1] > n || co[2] > n
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
end
puts 'Yes'
