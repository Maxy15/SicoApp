class Center < ApplicationRecord
    validates :name, :location, presence: true
end
