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
  "Sandwiches",
  "Sides",
  "Beverages",
  "Combos"
]

item_types_array.each do |name|
  ItemType.create( name: name )
end

#
# Size
#

sizes_array = [
  ["L", 1.50],
  ["M", 1.00],
  ["S", 0.50]
]

sizes_array.each do |name, price|
  Size.create( name: name, price: price )
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
  ["Meat", 1.00]
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

# item_type_id, name, has_size, price, description
items_array = [
  [sandwich_item_type.id, "Gyro", false, 3.00, "A single Gyro sandwich"]
  [sandwich_item_type.id, "Sub", false, 3.00, "A single Sub sandwich"],
  [sandwich_item_type.id, "Burger", false, 3.00, "A single Burger sandwich"],
  [sandwich_item_type.id, "Chicken", false, 3.00, "A single Chicken sandwich"],
  [side_item_type.id, "Fries", false, 1.00, "A single Fries side"],
  [side_item_type.id, "Tots", false, 1.00, "A single Tots side"],
  [side_item_type.id, "Chips", false, 1.00, "A single Chips side"],
  [side_item_type.id, "Slaw", false, 1.00, "A single Slaw side"],
  [beverage_item_type.id, "Coke", true, 0.00, "A single Coke beverage"],
  [beverage_item_type.id, "Diet Coke", true, 0.00, "A single Diet Coke beverage"],
  [beverage_item_type.id, "Tea", true, 0.00, "A single Tea beverage"],
  [beverage_item_type.id, "Coffee", true, 0.00, "A single Coffee beverage"],
  [combo_item_type.id, "1", true, 3.50, "Gyro, Side item, Small Beverage"],
  [combo_item_type.id, "2", true, 3.50, "Sub, Side item, Small Beverage"],
  [combo_item_type.id, "3", true, 3.50, "Burger, Side item, Small Beverage"],
  [combo_item_type.id, "4", true, 3.50, "Chicken, Side item, Small Beverage"],
]

items_array.each do |item_type_id, name, has_size, price, description|
  Item.create( item_type_id: item_type_id, name: name, has_size: has_size, price: price, description: description )
end
