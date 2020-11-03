FactoryBot.define do
  factory :book do
    title { '本の冒険' }
    autor { '本棚  太郎' }
    price    { 1230 }
    text     { '最高に面白い' }
    genre_id { 2 }
    association :user
  end
end
