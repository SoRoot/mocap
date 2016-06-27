class User
	include Mongoid::Document
	include ActiveModel::Validations	
	include ActiveModel::SecurePassword

	validates :username, presence: true 
	validates :username, uniqueness: true, if: 'username.present?' 
	validates :username, length: { minimum: 3, maximum: 50 }, if: 'username.present?'

	validates :password_digest, presence: true 
	validates :password_digest, format:{ with: /(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{6,}/,
				    message: "must have at least 6 characters, one uppercase, one lowercase and one digit number" },
			            if: 'password_digest.present?'
	validates :password_digest, confirmation: true

	field :username, type: String
	field :password_digest, type: String

	has_secure_password
end
