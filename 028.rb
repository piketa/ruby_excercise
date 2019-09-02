print "4桁の数を当ててください。\n"
print "同じ数字は１度しか使用されません。"
print "最上位に0が使用される場合もあります。\n"
print "ヒントとして、合っている数字の数と、"
print "桁（位置）も合っている数字の数を示します。\n"
print "答えが'4135'で入力が'0123'の場合、'数:2,桁:1'とヒントが出ます。\n"
print "----------------------------------------------------\n"

begin
  # 数字の重複が無い4桁の数字を作成します
  numbers = []
  begin
    numbers[0] = rand(10)
    numbers[1] = rand(10)
    numbers[2] = rand(10)
    numbers[3] = rand(10)
  end while (!(numbers[0] != numbers[1] && 
               numbers[0] != numbers[2] && 
               numbers[0] != numbers[3] && 
               numbers[1] != numbers[2] && 
               numbers[1] != numbers[3] && 
               numbers[2] != numbers[3]))

  print "4桁の数を考えました！！\n"

  1.step do |turn|
    print "数を当ててください。\n"
    num = gets.to_i

    # 入力された数値を1桁ずつ配列に代入します
    test = []
    test[3] = num % 10
    test[2] = (num / 10) % 10
    test[1] = (num / 100) % 10
    test[0] = (num / 1000) % 10

    kazu = 0
    keta = 0
    (0..3).each do |i|
      (0..3).each do |j|
        if (numbers[i] == test[j])
          kazu += 1   # 数字が一致

          keta += 1 if (i == j)   # 桁も一致
        end
      end
    end

    if (keta == 4)
      print "おめでとう！！ #{turn}回目で正解です。\n"
      break
    else
      print "数：#{kazu}、桁：#{keta}\n";
    end
  end

  print "もう一度やりますか？（Yes:1 No:0）"
  reply = gets.to_i
end while reply != 0
