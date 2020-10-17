class AddNicknameToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :nickname, :string
  end
end
