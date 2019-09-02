aCard = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

print "最初に１枚カードが出ますから掛け金を決めてください。\n"
print "次に出るカードが前のカードと同じか大きければ、あなたの勝ちです。\n"
print "掛け金が戻りますから、続けるかどうかを決めてください。続けて勝てば掛け金は２倍になります。以降、４倍、８倍と戻るお金が増えます。ただし、負けるとそれまでの勝ちはなくなります。\n"
print "所持金が無くなって破産するか、1000$を超えるとゲーム終了です。\n"
print "----------------------------------------------\n"
print "ゲームを開始します。所持金は100$です。\n"

money = 100

while money > 0 && money < 1000
  bet = 0
  times = 1
  first = rand(aCard.length)

  print "最初のカードです。\n|#{aCard[first]}|\n"

  begin
    print "いくら賭けますか？(1$ 〜 #{money}$) "
    bet = gets.to_i
  end while(bet < 1 || bet > money)

  money -= bet

  isBreak = false
  loop do
    card = rand(aCard.length)
    print "|#{aCard[card]}|\n"

    if card >= first
      print "あなたの勝ち。#{bet * times}$の勝ちです。\n"
      print "倍率は#{times * 2}倍。続けますか？(1=Yes; 0=No!) "

      reply = gets.to_i

      if reply == 0
        money += (bet * times)
        print "所持金は #{money}$です。\n\n"
        isBreak = true
      end

      times *= 2
      first = card
    else
      print "あなたの負け。所持金は #{money}$です。\n\n"
      isBreak = true
    end
    break if isBreak
  end
end

if money > 0
  print "おめでとう！！ あなたは大富豪です。\n"
else
  print "残念でした。破産です。\n"
end

