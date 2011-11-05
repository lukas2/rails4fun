class Account < ActiveRecord::Base
  has_many :bookings

  def self.default_account
    Account.first
  end
end
