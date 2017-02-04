class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :size
  has_many :order_item_extras
  has_many :extras, :through => :order_item_extras
end
