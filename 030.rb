class Hangman
  def initialize
    @answer = ""     # 正解の単語
    @correct = []    # 解答状況
    @alphabet = ""   # 未使用文字
    @mistake = 0     # 誤答数

    a_answer_word = [
      "TIGER", "CAT", "DOG", "LION", "FOX",
      "WOLF", "HORSE", "COW", "GOAT", "ZEBRA",
      "ELEPHANT", "PENGUIN", "GIRAFFE", "ANTEATER"
    ]

    # 正解の単語を選択します
    n = rand(a_answer_word.length)
    @answer = a_answer_word[n]

    (0...@answer.length).each { |i| @correct[i] = false }

    @alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @mistake = 0
  end

  # 解答のチェック
  def check_answer(ch)
    b_match = false

    # 正解文字をチェック
    (0...@answer.length).each do |i|
      if @answer[i] == ch
        @correct[i] = true
        b_match = true
      end
    end

    # 使用した文字を空白に
    @alphabet.gsub!(/#{ch}/, ' ')
    
    @mistake += 1 if b_match == false
  end

  # 終了のチェック
  def check_finish
    b_correct = true

    (0...@answer.length).each { |i| b_correct = false if @correct[i] == false }

    if b_correct then
      show_hangman(-1)
      print "#{@answer}\n"
      return true
    elsif @mistake == 6 then
      # 6回、間違えた場合
      show_hangman(@mistake)
      print "#{@answer}\n"
      return true
    end

    false
  end

  # ハングマンの表示
  def show_hangman(mistake)
    print " +-----+\n |     |\n"
    if mistake == 0 then print " |\n |\n |\n |\n/|\n"
    elsif mistake == 1 then print " |   (+_+;\n |\n |\n |\n/|\n"
    elsif mistake == 2 then print " |   (+_+;\n |    |Y|\n |\n |\n/|\n"
    elsif mistake == 3 then print " |   (+_+;\n | o／|Y|\n |\n |\n/|\n"
    elsif mistake == 4 then print " |   (+_+;\n | o／|Y|＼o\n |\n |\n/|\n"
    elsif mistake == 5 then print " |   (+_+;\n | o／|Y|＼o\n |   ／\n | ~~\n/|\n"
    elsif mistake == 6 then print " |   (@_@;\n | o／|Y|＼o\n |   ／ ＼\n | ~~    ~~\n/|\n"
    else print " |\n |   (^_^)\n | o／|Y|＼o\n |   ／ ＼\n/| ~~    ~~\n"
    end
  end

  # 現在状態の表示
  def show_state
    show_hangman(@mistake)
    print "#{@alphabet}\n"
    (0...@answer.length).each do |i|
      if @correct[i] == false then print "_ "
      else print "#{@answer[i]} "
      end
    end
    print "\n"
  end

  # 解答文字の入力
  def input_answer
    loop do
      print "? "
      in_w = gets.upcase.chomp

      return in_w if in_w.length > 0
    end
  end
end

print "--- HANGMAN ---\n\n"

begin
  game = Hangman.new

  loop do
    # 現在の状態を表示
    game.show_state

    # 文字を入力
    ch = game.input_answer
    
    # 合っている文字をチェック
    game.check_answer(ch)

    break if game.check_finish
  end

  print "もう一度やりますか？（Yes:1 No:0）"
  reply = gets.to_i
end while reply != 0

