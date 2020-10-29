class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :job
  belongs_to_active_hash :gender
  has_many :books
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :introduce
    validates :age, format: {with: /\A[0-9]+\z/}
    with_options numericality: { other_than: 1 } do
      validates :job_id
      validates :gender_id
    end
  end

end
