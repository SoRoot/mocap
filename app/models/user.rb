class User
	include Mongoid::Document
	include ActiveModel::Validations	
	include ActiveModel::SecurePassword

	validates :username,
		presence: true,
		uniqueness: true,
		length: { minimum: 3, maximum: 50 }
	
	validates :password_digest,
		presence: true,
		uniqueness: true,
		length: { minimum: 6, maximum: 255 },
		format: { with: /\A\w+\d\Z/ },
		confirmation: true

	field :username, type: String
	field :password_digest, type: String
	has_secure_password
end
