class Lesson < ApplicationRecord
  has_many :teacher_lessons
  has_many :teachers, through: :teacher_lessons
end
