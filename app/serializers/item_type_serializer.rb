class ItemTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :index_image, :thumbnail#, :items

  #def items
  #  object.items.map do |item|
  #    ItemSerializer.new(item, scope: scope, root: false, event: object)
  #  end
  #end
end
