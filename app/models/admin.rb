class Admin < ApplicationRecord

  has_secure_password
  # associations
  has_many :enrolled_students, class_name: 'Student', foreign_key: 'admin_id', inverse_of: :enrolled_by
  has_many :added_subjects, class_name: 'Subject', foreign_key: 'admin_id', inverse_of: :added_by
  has_many :hired_teachers, class_name: 'Teacher', foreign_key: 'admin_id', inverse_of: :hired_by

  # validations
  validates :first_name, :last_name, :phone, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password, presence: true
end
