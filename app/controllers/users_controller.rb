class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def create
  end



  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
   if @user.update(user_params)
      redirect_to user_path(@user.id),notice: 'You have updated user successfully.'
   else
      render :edit
   end
  end




  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

  def correct_user
    @user = User.find(params[:id])
    # @book = @user.book
    redirect_to (user_url(current_user)) unless params[:id] == current_user.id
  end

end
