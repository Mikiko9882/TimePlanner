class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :set_lessons, only: [:edit]
  before_action :set_subjects, only: [:edit]
  
  def edit; end
  
  def update
    if @user.update(user_params)
      redirect_to profile_path, success: t('defaults.message.updated', item: User.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: User.model_name.human)
      render :edit
    end
  end
  
  def show; end
  
  private
  
  def set_user
    @user = User.find(current_user.id)
  end

  def set_lessons
    @lessons = Lesson.all
  end

  def set_subjects
    @subjects = Subject.all
  end
  
  def user_params
    params.require(:user).permit(:login_id, :user_name, lesson_ids: [], subject_ids: [])
  end
end
