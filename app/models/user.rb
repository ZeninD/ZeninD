class User < ActiveRecord::Base
  # Include default device modules. Other available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniautable
  # devise :database_authenticatable, :registerable,
  # :recoverable, :rememberable, :validatable

  attr_accessible :login, :email, :password, :password_confirmation, :remember_me

  has_one  :cart
  has_many :orders
  has_many :comments

end
