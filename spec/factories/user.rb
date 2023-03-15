require "faker"

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    rut { '11111111-1' }
    phone { Faker::Number.number(digits: 8) }
    encrypted_password { Faker::Internet.password(min_length: 6, max_length: 10) }
    password { Faker::Internet.password(min_length: 6, max_length: 10) }
    email { Faker::Internet.safe_email }
  end
end