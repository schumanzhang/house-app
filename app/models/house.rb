class House < ApplicationRecord
    has_many :inspections
    has_and_belongs_to_many :agents
end
