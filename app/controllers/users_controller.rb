class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @appointments = Appointment.where(:user_id => current_user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    if @user.destroy
      redirect_to root_url, notice: "Usuario eliminado"
    end
  end
end
