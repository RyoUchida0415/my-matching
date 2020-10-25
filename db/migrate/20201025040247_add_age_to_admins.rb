class AddAgeToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :age, :integer
  end
end
