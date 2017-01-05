# 以下の条件を踏まえて、期待通りにプログラムが動くように修正してください
#  1. 赤点(30点以下)の点数がある場合は、警告を追加で表示する

# 教科名とテストの点数が格納されたハッシュ
score_list = {japanese: 30, mathematics: 82, english: 94, science: 51, social_studies: 77}

score_list.each do |key, val|
  # 標準の出力内容
  result = "#{key} : #{val}"
  # 赤点の場合のみ文言を追加
  result += "  falled!" if val <= 30

  puts result
end

#=> 教科名とテストの点数が、以下の通りでコンソール上に表示される
# japanese : 30  falled!
# mathematics : 82
# English : 94
# science : 51
# social_studies : 77