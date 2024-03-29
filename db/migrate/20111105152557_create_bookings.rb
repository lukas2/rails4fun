class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :description
      t.decimal :amount
      t.integer :account_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
