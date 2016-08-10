class CreateRolePerms < ActiveRecord::Migration
  def change
    create_table :role_perms do |t|
      t.string :urole
      t.text :perms, limit: 65535

      t.timestamps null: false
    end
  end
end
