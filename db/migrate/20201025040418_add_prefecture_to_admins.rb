class AddPrefectureToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :prefecture, :integer
  end
end
