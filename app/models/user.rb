class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#,     #末尾添加,号
         # :confirmable, :lockable                 #添加这一行

  # attr_accessor :email, :password, :password_confirmation, :remember_me
  # attr_accessor :email, :encrypted_password, :password, :password_confirmation, :remember_me

  belongs_to :role_perm, :foreign_key => "urole_id"
end
