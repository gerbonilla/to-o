class Plan < ApplicationRecord
  belongs_to :accident, optional: true
  belongs_to :health_contract, optional: true
end
