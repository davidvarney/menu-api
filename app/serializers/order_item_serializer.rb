class OrderItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :order
  has_one :item
  has_one :size
end
