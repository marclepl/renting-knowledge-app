class PagesController < ApplicationController

  #this will be the homepage with the link to the profile
  def home
  end

  def profile
    @my_books = Book.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
  end
end
