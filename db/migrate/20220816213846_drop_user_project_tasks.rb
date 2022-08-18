class DropUserProjectTasks < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_project_tasks
  end
end
