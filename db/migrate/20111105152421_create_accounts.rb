class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :account_name
      t.string :account_owner

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
