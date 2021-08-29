class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :quantity

  belongs_to :item
end
