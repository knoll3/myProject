class AddGoalIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :goal_id, :integer
    add_index :tasks, :goal_id
  end
end
