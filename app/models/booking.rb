class Booking < ActiveRecord::Base
  belongs_to :account

  TAX_RATE = 0.19

  validates :amount, :numericality => true
  validates :account, :presence => true

  before_validation :do_sth

  def self.most_expensive
    Booking.all.max(&:amount)
  end

  def do_sth
    puts "Usually I would do sth here."
  end

  def calculate_tax
    self.amount * TAX_RATE
  end

  def other_bookings_in_this_account
    self.account.bookings.reject do |b|
      b == self
    end
  end

end
