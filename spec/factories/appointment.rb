require 'faker'

FactoryBot.define do
  factory :appointment do
    date { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    hour { '14:00' }
    user_id { 1 }
    user
    terapist_id { 1 }
    terapist
  end
end