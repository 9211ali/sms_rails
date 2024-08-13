class AddAdminToSubject < ActiveRecord::Migration[7.1]
  def change
    add_reference :subjects, :admin, null: false, foreign_key: true
  end
end
