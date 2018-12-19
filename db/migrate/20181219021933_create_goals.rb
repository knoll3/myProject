class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
    	t.text :name
    	t.integer :target
    	t.integer :achieved
      t.timestamps
    end
  end
end
