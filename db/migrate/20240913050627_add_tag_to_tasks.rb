class AddTagToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :tag, :text
  end
end
