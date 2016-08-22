class User < ApplicationRecord
	attr_accessor :remember_token

	before_save :downcase_email

	has_secure_password

	validates :name, presence: true,
					 length: { maximum: 63 }
	validates :email, presence: true,
					  length: { maximum: 255 },
					  uniqueness: { case_sensitive: false }
	validates :password, presence: true,
						 length: { minimum: 6 }

	# Returns the hash digest of an unhashed password
	def self.digest unhashed_password
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
		BCrypt::Password.create(unhashed_password, cost: cost)
	end

	# Returns a random token
	def self.new_token
		SecureRandom.urlsafe_base64
	end

	# Updates remember_token
	def remember
		self.remember_token = User.new_token
		update_attribute :remember_digest, User.digest(remember_token)
	end

	# Forgets a user
	def forget
		update_attribute :remember_digest, nil
	end

	# Returns true if the given token matches the digest
	def authenticated? remember_token
		BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end

	private

		# Downcase email address before db insertion
		def downcase_email
			self.email = email.downcase
		end
end