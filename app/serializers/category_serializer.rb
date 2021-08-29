class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :route_name

  has_many :items
end
