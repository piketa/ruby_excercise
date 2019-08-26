=begin
もっと綺麗が書き方があるはず
=end

i = 1
str = ""

print "数字を入力してください："
numRow = gets.to_i
numCol = numRow

if numRow < 0
  puts "マイナスの数字が入力されました。"
else
  numRow.times do
    while i <= numCol do
      if (i % 2 == 0)
        str << '▼'
      else
        str << '▲'
      end
      i += 1
    end
    puts str
    numCol -= 1
    i = 1
    str = ""
  end
end

