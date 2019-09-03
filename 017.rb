print "数字を入力してください："
num = gets.to_i

if num < 0 then puts "マイナスの数字が入力されました。"
else num.times { |i| puts '*' * (i+1) }
end

