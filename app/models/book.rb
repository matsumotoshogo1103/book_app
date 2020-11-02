class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :genre_id, numericality: { other_than: 1 }
    validates :autor
    validates :price, format: { with: /\A[0-9]+\z/ }, numericality: { only_integer: true }
    validates :text
    validates :image
    validates :user_id
  end
end
