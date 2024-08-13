class AddTeacherToSubject < ActiveRecord::Migration[7.1]
  def change
    add_reference :subjects, :teacher, null: true, foreign_key: true
  end
end
