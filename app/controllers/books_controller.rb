class BooksController < ApplicationController
  def new
    @book = Book.new
    @user = User.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def show
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def edit
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
