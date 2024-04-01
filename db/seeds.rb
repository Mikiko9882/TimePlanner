# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#クラス名
Lesson.find_or_create_by!(lesson_name: '1年1組')
Lesson.find_or_create_by!(lesson_name: '1年2組')
Lesson.find_or_create_by!(lesson_name: '1年3組')
Lesson.find_or_create_by!(lesson_name: '1年4組')
Lesson.find_or_create_by!(lesson_name: '1年5組')
Lesson.find_or_create_by!(lesson_name: '1年6組')
Lesson.find_or_create_by!(lesson_name: '1年7組')
Lesson.find_or_create_by!(lesson_name: '1年8組')
Lesson.find_or_create_by!(lesson_name: '1年9組')
Lesson.find_or_create_by!(lesson_name: '1年10組')
Lesson.find_or_create_by!(lesson_name: '2年1組')
Lesson.find_or_create_by!(lesson_name: '2年2組')
Lesson.find_or_create_by!(lesson_name: '2年3組')
Lesson.find_or_create_by!(lesson_name: '2年4組')
Lesson.find_or_create_by!(lesson_name: '2年5組')
Lesson.find_or_create_by!(lesson_name: '2年6組')
Lesson.find_or_create_by!(lesson_name: '2年7組')
Lesson.find_or_create_by!(lesson_name: '2年8組')
Lesson.find_or_create_by!(lesson_name: '2年9組')
Lesson.find_or_create_by!(lesson_name: '2年10組')
Lesson.find_or_create_by!(lesson_name: '3年1組')
Lesson.find_or_create_by!(lesson_name: '3年2組')
Lesson.find_or_create_by!(lesson_name: '3年3組')
Lesson.find_or_create_by!(lesson_name: '3年4組')
Lesson.find_or_create_by!(lesson_name: '3年5組')
Lesson.find_or_create_by!(lesson_name: '3年6組')
Lesson.find_or_create_by!(lesson_name: '3年7組')
Lesson.find_or_create_by!(lesson_name: '3年8組')
Lesson.find_or_create_by!(lesson_name: '3年9組')
Lesson.find_or_create_by!(lesson_name: '3年10組')

#教科名
Subject.find_or_create_by!(subject_name: '国語')
Subject.find_or_create_by!(subject_name: '数学')
Subject.find_or_create_by!(subject_name: '英語')
Subject.find_or_create_by!(subject_name: '社会')
Subject.find_or_create_by!(subject_name: '理科')
Subject.find_or_create_by!(subject_name: '音楽')
Subject.find_or_create_by!(subject_name: '美術')
Subject.find_or_create_by!(subject_name: '体育')
Subject.find_or_create_by!(subject_name: '家庭科')
Subject.find_or_create_by!(subject_name: '技術')
Subject.find_or_create_by!(subject_name: '道徳')
Subject.find_or_create_by!(subject_name: '総合')
Subject.find_or_create_by!(subject_name: '特別活動')
