class AddAdminToTeacher < ActiveRecord::Migration[7.1]
  def change
    add_reference :teachers, :admin, null: false, foreign_key: true
  end
end
