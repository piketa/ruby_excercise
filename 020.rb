print "数字を入力してください："
num_row = gets.to_i

if num_row < 0
  puts "マイナスの数字が入力されました。"
else
  (1..num_row).each do |i|
    (1..i).each do |j|
      if (j == 1 || j == i || i == num_row) then print "■"
      else print "　"
      end
    end
    print "\n"
  end
end

