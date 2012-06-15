class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :title
      t.string :avatar
      t.integer :status

      t.timestamps
    end
  end
end
