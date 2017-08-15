class Order < ApplicationRecord
    validates :item, :price, presence: true
end
