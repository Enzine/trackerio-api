class AddForeignKeySportToCompletedActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :completed_activities, :sport_id, :integer
  end
end
