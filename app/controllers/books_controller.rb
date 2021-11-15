class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  def show
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:title, :body, :user_id)
  end

end
