class Student < ApplicationRecord
  belongs_to :enrolled_by, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :enrolled_students
  has_and_belongs_to_many :taken_sections, class_name: 'Section', join_table: 'sections_students'
end
