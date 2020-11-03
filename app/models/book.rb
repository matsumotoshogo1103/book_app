class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :genre_id, numericality: { other_than: 1 }
    validates :autor
    validates :price, format: { with: /\A[0-9]+\z/ }, numericality: { only_integer: true }
    validates :text
    validates :user
  end
end
