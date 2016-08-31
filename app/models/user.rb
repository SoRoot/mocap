#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

class User
	include Mongoid::Document
	include ActiveModel::Validations	
	include ActiveModel::SecurePassword

	validates :username, presence: true
	validates :username, uniqueness: true, if: 'username.present?' 
	validates :username, length: { minimum: 3, maximum: 50 }, if: 'username.present?'


	validates :password, presence: true 
	VALID_PASSWORD_REGEX = /(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{6,}/
	validates :password, format:{ with: VALID_PASSWORD_REGEX,
				    message: "must have at least 6 characters, one uppercase, one lowercase and one digit number"},
				    if: 'password.present?'
	validates :password, confirmation: true, if: 'password.present?'

	
	field :username, type: String
	field :password_digest, type: String

	has_secure_password

end
