print "列車は時速100km/hで走っています。駅までの距離は500mです。\n"
print "ブレーキを強くしたり、弱くしたりしながら駅に停車してください。\n"
print "ブレーキは毎回、１段階だけ強くしたり弱くしたりできます。\n"
print "--------------------------------------------------------------\n"

begin
  remain = 500    # 残りの距離
  speed = 100     # スピード
  brake = 0       # ブレーキの強さ
  second = 0      # 経過秒数

  while speed > 0 do
    i = 0
    while i < (remain / 10)
      print "_"
      i += 1
    end

    print "□□□\n"

    print "残り距離 #{remain}m 速度 #{speed}km/h ブレーキの強さ #{brake}\n"
    print "ブレーキの強さは？(2=強く、1=弱く、0=そのまま)"
    reply = gets.to_i

    if reply == 2 then brake += 1
    elsif (reply == 1 && brake > 0) then brake -= 1
    end

    if speed > brake then speed -= brake
    else speed = 0
    end

    remain -= (((speed * 10) + 35) / 36)
  end
  print "#{second}秒 駅までの距離 #{remain}mで停止しました。\n"

  print "もう一度やりますか？（1=Yes; 0=No!）"
  reply = gets.to_i
end while reply != 0

