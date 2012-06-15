class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_start
      t.datetime :event_end
      t.integer :status
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
