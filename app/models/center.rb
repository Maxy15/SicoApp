class Center < ApplicationRecord
    has_many :terapists
    validates :name, uniqueness: true
    validates :name, :location, presence: true
    validates :name, length: { minimum: 9, maximum: 40 }
end
