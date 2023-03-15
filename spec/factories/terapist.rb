require 'faker'

FactoryBot.define do
  factory :terapist do
    name { Faker::Name.name }
    medicalSpecialty { 'doctorSpecialty' }
    center_id { 1 }
    center
  end
end