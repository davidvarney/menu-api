class Extra < ActiveRecord::Base
  has_many :order_item_extras
  has_many :order_items, :through => :order_item_extras
end
