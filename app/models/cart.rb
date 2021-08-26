class Cart < ApplicationRecord
    has_many :items, through: :cart_item 
end
