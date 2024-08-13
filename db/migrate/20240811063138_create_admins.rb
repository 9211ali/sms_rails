class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
