class Port < ApplicationRecord
  has_many :inports
  has_many :positions, through: :inports
  acts_as_mappable
end
