class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :statuses

  attr_accessible :email, :password, :password_confirmatino, :remember_me, :firstname, :lastname, :profilename

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
