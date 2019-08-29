print "☆レーダー☆\n"
print "ターゲットとして 0～100 のうち１つの数が設定されます。探索する位置と範囲を入力してターゲットを見つけてください。\n"
print "ターゲットと探索位置の差が探索範囲以下であればヒットです。探索範囲より大きければ、はずれです。\n"
print "探索位置とターゲットが一致すれば正解です。\n"
print "----------------------------------------------\n"
print "ゲームを開始します。\n"

begin
  target = rand(101)
  print "ターゲットが設定されました。\n"

  1.step do |turn|
    print "位置は？"; position = gets.to_i
    print "範囲は？"; range = gets.to_i

    distance = target > position ? target - position : position - target

    if (distance == 0)
      print "おめでとう！", turn, "回目で正解です！\n"
      break
    elsif (distance <= range)
      print "ヒットしました。\n\n"
    else
      print "はずれました。\n\n"
    end
  end

  print "もう一度やりますか？（1=Yes、0=No）"; reply = gets.to_i
end while reply != 0

