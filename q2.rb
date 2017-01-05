# 期待通りにプログラムが動くように修正してください

# テストの点数が格納された配列
scores = [30, 82, 94, 51, 77]

sum = 0

scores.each do |score|
  sum += score
end

puts sum

#=> テストの合計点数 334 がコンソール上に表示される