class BookingsController < ApplicationController

  before_filter :find_booking, :only => [ :edit, :update, :destroy ]

  def index
    @bookings = Booking.all
  end

  def edit
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(params[:booking])
    booking.account = Account.default_account
    booking.save!
    redirect_to bookings_path
  end

  def update
    @booking.update_attributes(params[:booking])
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  protected

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
