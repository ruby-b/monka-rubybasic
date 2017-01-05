# 以下の条件を踏まえて、期待通りにプログラムが動くように修正してください
#  1. Productクラスは、商品の値段を管理することが出来る
#  2. Taxモジュールは、税率を管理する事が出来る
#  3. ProductクラスはTaxモジュールをMix-inしている

module Tax
  # 税率
  TAX_RATE = 1.08

  private
  # 税込金額を返すメソッド
  def to_tax(money)
    (money *= TAX_RATE).to_i
  end
end

class Product
  include Tax

  def initialize(price)
    @price = price
  end

  def sell
    puts "#{to_tax(@price)}円で売りました"
  end
end

product = Product.new(1000)
product.sell
#=> sellメソッドを実行すると、1080円で売りました がコンソール上に表示される