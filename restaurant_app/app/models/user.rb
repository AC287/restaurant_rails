class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :role, case_sensitive: false
  # has_secure_password

end
