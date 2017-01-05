# 以下の条件を踏まえて、期待通りにプログラムが動くように修正してください
#  1. Foodクラスでは、食材の備蓄数を管理することが出来る
#  2. Foodクラスには、食材を購入して備蓄数を1増やすbuyメソッドと、食材を消費して備蓄数を1減らすeatメソッドがある
#  3. eatメソッドは備蓄数が0より多い場合のみ食材を消費する

class Food
  def initialize
    # 備蓄数
    @stockpile = 0
  end

  def buy
    @stockpile += 1
  end

  def eat
    if @stockpile > 0
      puts "Good"
      @stockpile -= 1
    else
      puts "There is no food"
    end
  end
end

food = Food.new
food.buy

food.eat
#=> 備蓄がある状態でeatメソッドを実行すると、Good がコンソール上に表示される
food.eat
#=> 備蓄がない状態でeatメソッドを実行すると、There is no food がコンソール上に表示される