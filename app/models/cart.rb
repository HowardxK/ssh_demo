# PORO = Plain Old Ruby Object
class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product_id)
    found = @items.find { |item| item.product_id == product_id }

    if found
      found.increment!
    else
      @items << CartItem.new(product_id)
    end
    # 找...
  end

  def empty?
    @items.empty?     # 陣列內建 empty? 方法
  end
end