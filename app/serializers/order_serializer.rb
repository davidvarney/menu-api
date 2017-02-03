class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed
end
