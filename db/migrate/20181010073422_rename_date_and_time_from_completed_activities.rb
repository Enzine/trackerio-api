class RenameDateAndTimeFromCompletedActivities < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :completed_activities, :time, :time_of_completion
  end
  def self.down
  end
end
