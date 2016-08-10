class ChangeUroleFieldForUsers < ActiveRecord::Migration
  def change
    rename_column :users, :urole, :urole_id
  end
end
