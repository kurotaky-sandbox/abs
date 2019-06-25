a = gets.chomp.to_i # 500円
b = gets.chomp.to_i # 100円
c = gets.chomp.to_i # 50円
x = gets.chomp.to_i # 合計金額

count = 0

a_arr = [500] * a
b_arr = [100] * b
c_arr = [50] * c

a_arr.each_with_index do |va, i|
  b_arr.each_with_index do |vb, j|
    c_arr.each_with_index do |vc, k|
      p count
      count = count + 1 if (va * i + vb * j + vc * k) == x
    end
  end
end

puts count
