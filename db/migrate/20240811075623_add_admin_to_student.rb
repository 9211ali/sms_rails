class AddAdminToStudent < ActiveRecord::Migration[7.1]
  def change
    add_reference :students, :admin, null: false, foreign_key: true
  end
end
