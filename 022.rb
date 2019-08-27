class Bingo
  def self.generate_card
    b = (1..15).to_a.sample(5)        # 1..15からランダムに5つ選んで配列を作成
    i = (16..30).to_a.sample(5)
    n = (31..45).to_a.sample(5)
    n[2] = ""                         # 真ん中をfreeに
    g = (46..60).to_a.sample(5)
    o = (61..75).to_a.sample(5)

    card = " B |  I |  N |  G |  O\n"
    5.times do |j|
      [b,i,n,g,o].each do |column|
        card += column[j].to_s.rjust(2) + " | "         # 一行ずつ連結
      end
      card[-3..-1]="\n"               # 右端の' | 'を改行に置換
    end
    return card
  end
end

print Bingo.generate_card

