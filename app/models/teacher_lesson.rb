class TeacherLesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson

  validates_uniqueness_of :lesson_id, scope: [:teacher_id]
end
