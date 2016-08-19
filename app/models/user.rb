class User < ApplicationRecord
	#before_save { self.email = email.downcase }
	has_secure_password
	validates :name, presence: true, length: { maximum: 63 }
	validates :email, presence: true, length: { maximum: 255 }
	validates :password, presence: true, length: { minimum: 6 }	
end