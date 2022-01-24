class Inspection < ApplicationRecord
    # validation
    validates :name, length: { minimum: 2 }
    validates :day, presence: true
    validates :house_id, presence: true
    validates :comment, presence: true
    validates :contact, presence: true

    belongs_to :house
end
