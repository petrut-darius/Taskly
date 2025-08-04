class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false, default: "Project name"
      t.boolean :active, null: false, default: true
      t.integer :priority, null: false, default: 1
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
