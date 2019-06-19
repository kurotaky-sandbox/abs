n = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

count = 0

loop do
  if numbers.map{|ar| ar.even?}.all?
    numbers.map!{|ar| ar / 2}
    count = count + 1
  else
    break
  end
end

puts count
