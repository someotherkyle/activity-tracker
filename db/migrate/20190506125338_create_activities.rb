class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :user_id
      t.integer :start_time
      t.integer :end_time
    end
  end
end
