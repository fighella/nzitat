class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user,    :null => false
      t.references :event,   :null => false
      t.timestamps
    end
  end
end
