class CreateTeacherLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :teacher_lessons do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
