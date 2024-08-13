class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.string :roll_no

      t.timestamps
    end
  end
end
