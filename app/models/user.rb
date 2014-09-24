class User < ActiveRecord::Base
	has_secure_password
	has_many :conversations
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
	validates :email, :username, presence: true
    validates :email, :username, uniqueness: true
    validates :password, :length => {minimum: 4}
end
