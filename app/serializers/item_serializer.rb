class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :has_size, :price, :description, :quantity, :index_image
  has_one :item_type
end
