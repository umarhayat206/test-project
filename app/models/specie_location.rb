class SpecieLocation < ApplicationRecord
  belongs_to :location
  belongs_to :specie
end
