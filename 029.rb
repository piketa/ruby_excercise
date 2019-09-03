print "月着陸船を、無事、月面に軟着陸させてください。\n"
print "月の重力は地球の約1/6です。１秒毎にエンジンを燃焼させて落下速度を調整してください。\n"
print "燃料を1ユニット燃焼すると0.1m/s落下速度が減少します。１回で最大50ユニットまで燃焼できます。\n"
print "月面に1.0m/s以下の速度で到達すると着陸成功です。\n"
print "-----------------------------------------------------------\n"

begin
  altitude = 100.0    # 高度
  velocity = 0.0      # 速度
  fuel = 250          # 燃料

  while altitude > 0.0
    (0...(altitude/2.0)).each { print " " }
    print ">□\n"
    print "高度：#{altitude}m 速度：#{velocity}m/s 残燃料：#{fuel}\n"

    max_fuel = 50   # 最大燃焼ユニット

    max_fuel = fuel if fuel < max_fuel

    begin
      print "何ユニット燃焼しますか？(0～#{max_fuel})"
      reply = gets.to_i
    end while (! (0 <= reply && reply <= max_fuel))

    # 速度の計算
    velocity += 1.62          # 重力加速度
    velocity -= reply * 0.1   # 燃焼

    # 残燃料の計算
    fuel -= reply

    # 高度の計算
    altitude -= velocity
  end

  if velocity > 1.0
    print "残念！ 着陸船は速度#{velocity}m/sで月面に激突しました。\n"
  else
    print "おめでとう！ 無事、月面に軟着陸できました。\n"
  end

  print "もう一度やりますか？（Yes:1 No:0）"
  reply = gets.to_i
end while reply != 0
