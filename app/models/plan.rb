class Plan < ApplicationRecord
  belongs_to :user
  has_one :review
end
