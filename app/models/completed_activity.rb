class CompletedActivity < ApplicationRecord
  belongs_to :sport
  has_many :completed_activity_categories
  has_many :categories, through: :completed_activity_categories
end
