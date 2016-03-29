class User < ActiveRecord::Base
  has_many :customers
  
  validates :username, presence: true, uniqueness: true
  validates :role, case_sensitive: false
  # has_secure_password

end
