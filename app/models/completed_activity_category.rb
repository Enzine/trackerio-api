class CompletedActivityCategory < ApplicationRecord
  belongs_to :completed_activity
  belongs_to :category
end
