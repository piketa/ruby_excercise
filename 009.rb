scores = [100, 200, 300]
sum = 0

scores.each { |score|
  sum += score
}

p "合計すると、#{sum}になります。"
p "平均すると、#{sum / scores.size}になります。"

