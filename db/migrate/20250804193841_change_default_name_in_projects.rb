class ChangeDefaultNameInProjects < ActiveRecord::Migration[8.0]
  def change
    change_column_default :projects, :name, "Add a project name..."
  end
end
