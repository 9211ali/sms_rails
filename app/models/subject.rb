class Subject < ApplicationRecord
  belongs_to :added_by, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :added_subjects
  belongs_to :taken_by, class_name: 'Teacher', foreign_key: 'teacher_id', inverse_of: :subject, optional: true
  has_one :exam
end
