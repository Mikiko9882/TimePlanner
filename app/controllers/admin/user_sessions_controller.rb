class Admin::UserSessionsController < Admin::BaseController
  skip_before_action :require_login, only: %i[new create]
  skip_before_action :check_admin, only: %i[new create]
  layout 'layouts/admin_login'
  
  def new; end
  
  def create
    @user = login(params[:login_id], params[:password])
    if @user
      redirect_to admin_users_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    logout
    redirect_to admin_login_path, success: t('.success')
  end
end
