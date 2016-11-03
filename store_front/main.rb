require "./item.rb"
require "./electronics.rb"


item1 = StoreFront::Item.new({item_name: 'broom', color: 'brown', price: 3})
item2 = StoreFront::Item.new({color: 'black', item_name: 'mop', price: 4})
item3 = StoreFront::Electronics.new({item_name: 'vacuum', price: 7, color: 'green', battery: false})

puts item1.item_name
puts item2.color
puts item3.price
puts item3.battery