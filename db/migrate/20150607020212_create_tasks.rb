class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :time_frame
      t.boolean :completed
      t.boolean :priority

      t.timestamps null: false
    end
  end
end
