class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.string :time_form
      t.string :time_to
      t.string :note_title
      t.belongs_to :schedule, index: true

      t.timestamps
    end
  end
end
