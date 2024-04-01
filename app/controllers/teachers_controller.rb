class TeachersController < ApplicationController
    
  def new
    @teacher = Teacher.new
    @lessons = Lesson.all
    @subjects = Subject.all
  end
    
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to users_path, success: t('defaults.message.created', item: Teacher.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Teacher.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end
    
  private
    
  def teacher_params
    params.require(:teacher).permit(:user_id, lesson_ids: [], subject_ids: [])
  end
end
