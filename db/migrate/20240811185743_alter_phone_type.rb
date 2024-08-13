class AlterPhoneType < ActiveRecord::Migration[7.1]
  def change
    change_column :admins, :phone, :string
    change_column :students, :phone, :string
    change_column :teachers, :phone, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
