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

class Electronics < Item
  attr_reader :battery
  def initialize(item_option)
    super
    @battery = item_option[:battery]
  end

end

item1 = Item.new({item_name: 'broom', color: 'brown', price: 3})
item2 = Item.new({color: 'black', item_name: 'mop', price: 4})
item3 = Electronics.new({item_name: 'vacuum', price: 7, color: 'green', battery: false})

puts item1.item_name
puts item2.color
puts item3.price
puts item3.battery
