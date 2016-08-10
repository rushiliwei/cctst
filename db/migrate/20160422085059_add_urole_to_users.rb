class AddUroleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :urole, :string
  end
end
