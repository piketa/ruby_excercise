print "数字を入力してください："
num_row = gets.to_i
num_col = num_row
str = ""

if num_row < 0
  puts "マイナスの数字が入力されました。"
else
  num_row.times do
    (1..num_col).each do |i|
      if (i % 2 == 0) then str << '▼'
      else str << '▲'
      end
    end
    puts str
    num_col -= 1
    str = ""
  end
end

