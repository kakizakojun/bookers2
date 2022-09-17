class UsersController < ApplicationController
  def show
    @user = Books.all
  end

  def edit
  end
end
