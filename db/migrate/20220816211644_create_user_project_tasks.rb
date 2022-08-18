class CreateUserProjectTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_project_tasks do |t|
      t.integer :project_id
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end
end
