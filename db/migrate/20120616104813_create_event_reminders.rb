class CreateEventReminders < ActiveRecord::Migration
  def change
    create_table :event_reminders do |t|
      t.integer :event_id
      t.datetime :notify_at, :delivered_at

      t.timestamps
    end
    add_index :event_reminders, :event_id
    add_index :event_reminders, [:delivered_at, :notify_at]
  end
end
