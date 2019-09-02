def throwDices(n)
  sum = 0
  n.times { |i| sum += rand(3) + 1 }
  sum
end

def showBoard(pos)
  pos.times { print "_ " }
  print "▲ "
  (pos+1 ... 30).each { print "_ " }
  print "|上がり！\n" 
end

print "▲すごろく▲\n"
print "30マス先にゴールがあります。\n"
print "1、2、3の3つの目を持つ特別なサイコロ10個を、好きな数だけ振って駒を進めます。\n"
print "ぴったり上がりに止まれば終わりです。目の数が多ければ、余った目の数だけ戻ります。\n"
print "--------------------------------------------------------------------------------\n"

begin
  position = 0
  
  showBoard position
  
  1.step do |turn|
    n = 0
    loop do
      print "残り#{30 - position}マスです。サイコロの数は？"
      n = gets.to_i
      if n <= 10
        break
      else
        print "サイコロは10個までです。"
      end
    end
    
    me = throwDices(n)
    
    print "出た目の合計 #{me}\n"
    
    position += me
    
    if position == 30
      print "おめでとう！！ #{turn}回目で上がりです\n"
      break
    end
  
    position = 30 - (position - 30) if position > 30
  
    showBoard position
  end
  
  print "もう一度やりますか？（1=Yes、0=No）"; reply = gets.to_i
end while reply != 0

