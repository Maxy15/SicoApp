class Terapist < ApplicationRecord
    belongs_to :center
    has_many :users, :through => :appointments
    validates :name, uniqueness: true
    validates :name, :medicalSpecialty, presence: true
end
