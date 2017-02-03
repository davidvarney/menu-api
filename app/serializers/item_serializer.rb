class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :has_size, :price, :description
  has_one :item_type
end
