a = gets.chomp.to_i # 500円
b = gets.chomp.to_i # 100円
c = gets.chomp.to_i # 50円
x = gets.chomp.to_i # 合計金額

count = 0

for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      # p "#{i},#{j},#{k}"
      count = count += 1 if (500 * i + 100 * j + 50 * k) == x
    end
  end
end

puts count
