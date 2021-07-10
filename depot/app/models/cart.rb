class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy 
                        #если удалится корзина, удалятся и товары в этой корзине
end
