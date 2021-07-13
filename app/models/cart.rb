# PORO = Plain Old Ruby Object
class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def serialize
    # items = [
    #   {"product_id" => 1, "quantity" => 3},
    #   {"product_id" => 2, "quantity" => 2}
    # ]

    items = @items.map { |item| {"product_id" => item.product_id,
                                 "quantity" => item.quantity} }

    { "items" => items }
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

  def total_price
    # total = 0

    # @items.each do |item|
    #   total += item.total_price
    # end

    # total

    # 上面的寫法不夠 Ruby
    @items.reduce(0) { |sum, item| sum + item.total_price }
  end
end