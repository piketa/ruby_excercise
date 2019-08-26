=begin
書き方がJavaっぽくなったしまった
=end

i = 1
j = 1

print "数字を入力してください："
numRow = gets.to_i

if numRow < 0
  puts "マイナスの数字が入力されました。"
else
  while i<=numRow do
    while j<=i do
      if (j == 1 || j == i || i == numRow)
        print "■"
      else
        print "　"
      end
      j += 1
    end
    print "\n"
    i += 1
    j = 1 
  end
end

