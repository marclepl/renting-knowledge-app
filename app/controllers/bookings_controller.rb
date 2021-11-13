class BookingsController < ApplicationController
  #this function allows us to create a new booking
  def new
    @book = Book.find(params[:book_id])
    @booking = Booking.new
  end

  #this function allows us to assign the booking to the correct user and correct books
  def create
    @book = Book.find(params[:book_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.book = @book
    @booking.user = @user
    @booking.save!
    redirect_to profile_path
  end


  private

  #this allows us to specify which elements need to be filled in a booking before it can be submitted
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
