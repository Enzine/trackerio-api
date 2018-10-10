class RemoveDurationFromCompletedActivities < ActiveRecord::Migration[5.1]
  def change
    remove_column :completed_activities, :duration
    add_column :completed_activities, :duration_seconds, :integer
    add_column :completed_activities, :duration_minutes, :integer
    add_column :completed_activities, :duration_hours, :integer
  end
end
