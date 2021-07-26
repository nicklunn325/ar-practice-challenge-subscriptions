class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :billing_date
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
