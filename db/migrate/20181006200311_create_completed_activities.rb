class CreateCompletedActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_activities do |t|
      t.date :time
      t.string :place
      t.time :duration
      t.text :description

      t.timestamps
    end
  end
end
