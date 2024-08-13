class Teacher < ApplicationRecord
  belongs_to :hired_by, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :hired_teachers
  has_one :subject
  has_and_belongs_to_many :assigned_sections, class_name: 'Section', join_table: 'sections_teachers'
end
