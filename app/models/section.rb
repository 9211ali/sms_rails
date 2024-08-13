class Section < ApplicationRecord
  has_and_belongs_to_many :enrolled_students, class_name: 'Student', join_table: 'sections_students'
  has_and_belongs_to_many :assigned_teachers, class_name: 'Teacher', join_table: 'sections_teachers'
end
