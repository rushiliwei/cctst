# 创建数据库视图shitu_users(其对应的model是ShituUser)
class CreateShituUsers < ActiveRecord::Migration
  def up
    self.connection.execute %Q( CREATE OR REPLACE SQL SECURITY DEFINER VIEW shitu_users(email, username) AS SELECT users.email,users.username FROM users )
  end
  def down
    self.connection.execute " DROP VIEW IF EXISTS shitu_users; "
  end
end
