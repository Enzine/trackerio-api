class AddUserToCompletedActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :completed_activities, :user, :string
  end
end
