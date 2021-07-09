# PORO = Plain Old Ruby Object
class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product_id)
    @items << product_id
  end

  def empty?
    @items.empty?     # 陣列內建 empty? 方法
  end
end