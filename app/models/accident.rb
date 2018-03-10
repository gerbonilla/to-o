class Accident < ApplicationRecord
  has_many :coverages
  has_many :plans
end
