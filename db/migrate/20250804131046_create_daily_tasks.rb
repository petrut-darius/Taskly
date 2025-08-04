class CreateDailyTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_tasks do |t|
      t.string :name, null: false, default: "Task nou"
      t.datetime :get_till_done, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
