i = 1

print "数字を入力してください："
num = gets.to_i

if num < 0
  puts "マイナスの数字が入力されました。"
else
  num.times do
    puts '*' * i
    i += 1
  end
end

