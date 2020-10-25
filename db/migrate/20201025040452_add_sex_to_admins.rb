class AddSexToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :sex, :boolean
  end
end
