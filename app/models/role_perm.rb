class RolePerm < ActiveRecord::Base
  serialize :perms, JSON

  has_many :users, :foreign_key => "urole_id"
end
