class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :name
      t.string :time
      t.string :work

      t.timestamps
    end
  end
end
