class AddPasswordsToAdmin < ActiveRecord::Migration[7.1]
  def change
    add_column :admins, :password_digest, :string
    # add_column :admins, :password_confirmation, :string
  end
end
