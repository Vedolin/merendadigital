class Meal < ApplicationRecord
  belongs_to :age
  belongs_to :kind
  belongs_to :school
end
