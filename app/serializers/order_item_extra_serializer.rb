class OrderItemExtraSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :extra
  has_one :order_item
end
