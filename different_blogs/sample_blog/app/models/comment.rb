class Comment < ApplicationRecord
  belongs_to :article # связываем комментарии со статьёй
  validates :body, presence: true,length: { maximum: 4000 }
end
