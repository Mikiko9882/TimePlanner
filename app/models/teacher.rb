class Teacher < ApplicationRecord

  belongs_to :user

  has_many :teacher_lessons
  has_many :lessons, through: :teacher_lessons

  has_many :teacher_subjects
  has_many :subjects, through: :teacher_subjects
end