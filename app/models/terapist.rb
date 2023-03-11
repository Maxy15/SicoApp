class Terapist < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, :medicalSpecialty, presence: true
end
