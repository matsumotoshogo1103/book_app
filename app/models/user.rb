class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books

  with_options presence: true do
    # 後々正規表現で細かいバリデーションを加える
    validates :nickname
    validates :age
    validates :job_id
    validates :gender_id
    validates :introduce
  end

end
