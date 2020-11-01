class Book < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :genre_id
    validates :autor
    validates :price
    validates :text
    validates :user_id
  end
end
