class FishLocation < ApplicationRecord
  belongs_to :fish
  belongs_to :location
end
