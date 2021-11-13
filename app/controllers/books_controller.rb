class BooksController < ApplicationController

  #this function gives us the list of all the books if nothing is specified
  #OR if a search term is given, it will run the SQL query and will show us only the selected book
  def index
    if params[:query].present?
      sql_query = " \
        books.title ILIKE :query \
        OR books.author ILIKE :query \
        OR users.city ILIKE :query \
        "
      @books = Book.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end

  #this function shows us the details of a certain book when we click on it
  def show
    @books = current_user.books
    @book = Book.find(params[:id])

    @sum = 0
    @books.each do |book|
      @book_total = 0
      book.bookings.each do |booking|
        @booking_total = ((booking.end_date- booking.start_date) * book.price_per_day).round
        @book_total += @booking_total
      end
      @sum += @book_total
    end
    @sum
  end

  #this function allows us to create a new instance of a book
  def new
    @book = Book.new # needed to instantiate the form_for
  end

  #this function assigns the new book to a certain user and saves it in the database
  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save!
    redirect_to book_path(@book)
  end

  #this function allows us to find a certain book
  def edit
    @book = Book.find(params[:id])
  end

  #this function will allow us to update the details of a book
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  #this function will allow us to delete a book that has been booked or that is not for sale anymore
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  #this function gives the necessary requirements of what is needed to create a book
  def book_params
    params.require(:book).permit(:title, :author, :description, :price_per_day, :photo)
  end
end
