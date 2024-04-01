class Teacher < ApplicationRecord
  has_many :teacher_lessons
  has_many :lessons, through: :teacher_lessons
end