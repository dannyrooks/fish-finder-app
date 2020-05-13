class Location < ApplicationRecord
    has_many :fish_locations
    has_many :fishes, through: :fish_locations
end
