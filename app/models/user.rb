class User < ActiveRecord::Base
	has_secure_password
	validates :email, :username, presence: true
    validates :email, :username, uniqueness: true
    validates :password, :length => {minimum: 4}
end
