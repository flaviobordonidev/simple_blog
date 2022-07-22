class LoginsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(login_params)

    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "Email or password is wrong!"
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path, notice: "Successfully logged out"
  end
 
  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
