class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).order(created_at: :desc)
  end
  
  def new
    @user = User.new
  end
        
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end
        
  private
        
  def user_params
    params.require(:user).permit(:login_id, :user_name, :password, :password_confirmation)
  end
end
