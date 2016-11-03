class Item
  def initialize(item_option)
    @item_name = item_option[:item_name]
    @color = item_option[:color]
    @price = item_option[:price]
  end

  def item_name
    return @item_name
  end

  def color
    return @color
  end
  
  def price
    return @price
  end
end