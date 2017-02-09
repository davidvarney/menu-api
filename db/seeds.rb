# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# ItemType
#
item_types_array = [
  ["Sandwiches", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/sandwiches.jpg"],
  ["Sides", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/sides.jpg"],
  ["Beverages", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/beverages.jpg"],
  ["Combos", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/combos.jpg"],
  ["Kids", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/kids.jpg"],
  ["Breakfast", "https://s3.us-east-2.amazonaws.com/react-menu/thumbnails/breakfast.jpg"]
]

item_types_array.each do |name, thumbanil|
  ItemType.create( name: name, thumbnail: thumbnail )
end

#
# Size
#

sizes_array = [
  ["L", 1.50, 1.50],
  ["M", 1.00, 1.00],
  ["S", 0.50, 0.00]
]

sizes_array.each do |name, base_price, combo_price|
  Size.create( name: name, base_price: base_price, combo_price: combo_price )
end

#
# Extra
#

extras_array = [
  ["Mayo", 0.25],
  ["Ketchup", 0.25],
  ["Mustard", 0.25],
  ["Lettuce", 0.10],
  ["Onion", 0.10],
  ["Tomato", 0.10],
  ["Meat", 1.00],
  ["Egg", 0.50],
]

extras_array.each do |name, price|
  Extra.create( name: name, price: price )
end

#
# Item
#

# We need to pull all of the ItemType records that were just created
sandwich_item_type = ItemType.find_by name: 'Sandwiches'
side_item_type = ItemType.find_by name: 'Sides'
beverage_item_type = ItemType.find_by name: 'Beverages'
combo_item_type = ItemType.find_by name: 'Combos'
kid_item_type = ItemType.find_by name: 'Kids'
breakfast_item_type = ItemType.find_by name: 'Breakfast'

# item_type_id, name, has_size, price, description
items_array = [
  [sandwich_item_type.id, "Gyro", false, 3.00, "Gyro sandwich", 1],
  [sandwich_item_type.id, "Sub", false, 3.00, "Sub sandwich", 1],
  [sandwich_item_type.id, "Burger", false, 3.00, "Burger sandwich", 1],
  [sandwich_item_type.id, "Chicken", false, 3.00, "Chicken sandwich", 1],
  [kid_item_type.id, "Nuggets", false, 2.00, "Chicken nuggets", 5],
  [kid_item_type.id, "Pizza Rolls", false, 2.00, "Pizza Rolls", 5],
  [kid_item_type.id, "Taco", false, 2.00, "Taco", 1],
  [breakfast_item_type.id, "Egg Wrap", false, 2.50, "Egg Wrap", 1],
  [breakfast_item_type.id, "Egg & Chorizo Wrap", false, 2.50, "Egg & Chorizo Wrap", 1],
  [breakfast_item_type.id, "French Toast Sticks", false, 2.50, "French toast sticks", 5],
  [side_item_type.id, "Fries", false, 1.00, "Fries side", 1],
  [side_item_type.id, "Tots", false, 1.00, "Tots side", 5],
  [side_item_type.id, "Chips", false, 1.00, "Chips side", 1],
  [side_item_type.id, "Slaw", false, 1.00, "Slaw side", 1],
  [side_item_type.id, "Carrot Sticks", false, 1.00, "Carrot Sticks side", 5],
  [beverage_item_type.id, "Coke", true, 0.00, "Coke beverage", 1],
  [beverage_item_type.id, "Diet Coke", true, 0.00, "Diet Coke beverage", 1],
  [beverage_item_type.id, "Tea", true, 0.00, "Tea beverage", 1],
  [beverage_item_type.id, "Coffee", true, 0.00, "Coffee beverage", 1],
  [beverage_item_type.id, "Juice", true, 0.00, "Juice beverage", 1],
  [beverage_item_type.id, "Milk", true, 0.00, "Milk beverage", 1],
  [combo_item_type.id, "1", true, 4.00, "Gyro, Side item, Small Beverage", 1],
  [combo_item_type.id, "2", true, 4.00, "Sub, Side item, Small Beverage", 1],
  [combo_item_type.id, "3", true, 4.00, "Burger, Side item, Small Beverage", 1],
  [combo_item_type.id, "4", true, 4.00, "Chicken, Side item, Small Beverage", 1],
  [combo_item_type.id, "5", true, 3.00, "Kids: Nuggets, Side item, Small Beverage", 5],
  [combo_item_type.id, "6", true, 3.00, "Kids: Pizza Rolls, Side item, Small Beverage", 5],
  [combo_item_type.id, "7", true, 3.00, "Kids: Taco, Side item, Small Beverage", 1],
  [combo_item_type.id, "8", true, 3.50, "Breakfast: Egg Wrap, Side item, Small Beverage", 1],
  [combo_item_type.id, "9", true, 3.50, "Breakfast: Egg & Chorizo Wrap, Side item, Small Beverage", 1],
  [combo_item_type.id, "10", true, 3.50, "Breakfast: French toast sticks, Side item, Small Beverage", 5],
]

items_array.each do |item_type_id, name, has_size, price, description, quantity, index_image, thumbnail|
  Item.create( item_type_id: item_type_id, name: name, has_size: has_size, price: price, description: description, quantity: quantity, thumbnail: thumbnail, index_image: index_image)
end
