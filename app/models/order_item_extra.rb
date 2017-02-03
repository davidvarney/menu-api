class OrderItemExtra < ActiveRecord::Base
  belongs_to :extra
  belongs_to :order_item
end
