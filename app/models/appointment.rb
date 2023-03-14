class Appointment < ApplicationRecord
    belongs_to :terapist
    belongs_to :user
    validates :date, :hour, presence: true
end
