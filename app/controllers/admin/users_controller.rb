class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: %i[edit update show destroy]
  
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).order(created_at: :desc)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), success: t('defaults.message.updated', item: User.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: User.model_name.human)
      render :edit
    end
  end

  def show
    @user = User.find(params[:id]).decorate
    @test_results_data = @user.test_results.order(created_at: :asc).pluck(:test_name, :achievement_rate).map.with_index { |(test_name, achievement_rate), index| ["#{test_name} (#{index + 1})", achievement_rate] }
    @test_results_data2 = @user.test_results.pluck(:preparation_time_minutes, :score)
    @average_achievement_rate = @user.average_achievement_rate
    @test_results = TestResult.where(user_id: @user.id).order(created_at: :desc)
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, success: t('defaults.message.deleted', item: User.model_name.human)
  end
  
  private

  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:login_id, :password, :password_confirmation, :user_name)
  end
end
