class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :status
      t.date :due_date

      t.timestamps
    end
  end
end
