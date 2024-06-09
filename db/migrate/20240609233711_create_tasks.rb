class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :title
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
