class CreateHourRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :hour_registrations do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :small_break
      t.integer :big_break
      t.float :working_hours

      t.timestamps
    end
  end
end
