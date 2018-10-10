class Category < ApplicationRecord
  has_many :completed_activity_categories
  has_many :completed_activities, through: :completed_activity_categories
end
