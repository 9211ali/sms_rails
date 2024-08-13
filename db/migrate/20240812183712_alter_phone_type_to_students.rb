class AlterPhoneTypeToStudents < ActiveRecord::Migration[7.1]
  def change
    change_column :students, :phone, :string
    change_column :teachers, :phone, :string
  end
end
