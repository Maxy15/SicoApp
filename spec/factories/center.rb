require 'faker'

FactoryBot.define do
  factory :center do
    name { 'Center Lorem Ipsum' }
    location { Faker::Address.full_address }
    terapist_id { 1 }
    terapist
  end
end