class CreateAudioNotes < ActiveRecord::Migration
  def change
    create_table :audio_notes do |t|
      t.string :title
      t.string :url
      t.integer :notebook_id

      t.timestamps
    end
  end
end
