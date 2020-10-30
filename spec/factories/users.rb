FactoryBot.define do
  factory :user do
    nickname              { 'タロウ' }
    email                 { Faker::Internet.free_email }
    password              { '123abc' }
    password_confirmation { password }
    age                   { 22 }
    job_id                { 2 }
    gender_id             { 2 }
    introduce             { 'よろしく！' }
  end
end