class CreateCompletedActivityCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_activity_categories do |t|
      t.references :completed_activity, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
