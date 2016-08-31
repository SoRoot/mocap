#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

class Actor
  include Mongoid::Document
  include ActiveModel::Model

	VALID_NAME_REGEX = /\A[a-zA-Z0-9]{2,16}\z/
	VALID_BODY_REGEX = /\A\d{2,3}\z/

  validates :name, presence: true
	validates :name, uniqueness: true, if: 'name.present?'
	validates :name, format: { with: VALID_NAME_REGEX, message: "must have at least 3 characters without special characters" },
					if: 'name.present?'

	validates :weight, presence: true
	validates :weight, format: { with: VALID_BODY_REGEX, message: "must be in cm and 2-3 digits long" },
					if: 'weight.present?'

	validates :gender, presence: true

	validates :body_height, presence: true
	validates :body_height, format: { with: VALID_BODY_REGEX, message: "must be in cm and 2-3 digits long" },
					if: 'body_height.present?'

	[:shoulder_width,
	:shoulder_height,
	:inner_leg_length,
	:tibia_length,
	:body_depth,
	:hip_width,
	:seat_height,
	:shoulder_elbow_length,
	:elbow_wrist_length,
	:chest_girth,
	:waist_girth,
	:thigh_girth].each { |x|
					validates x, format: { with: VALID_BODY_REGEX,
															 message: "must be in cm and 2-3 digits long", allow_blank: true } 

	}
					#validates_format_of x, { :with =>  VALID_BODY_REGEX,
															 #message: "must be in cm and 2-3 digits long", :allow_blank => true } )


  field :name
  field :weight
  field :gender
  field :body_height
  field :shoulder_width
  field :shoulder_height
  field :inner_leg_length
  field :tibia_length
  field :body_depth
  field :hip_width
  field :seat_height
  field :shoulder_elbow_length
  field :elbow_wrist_length
  field :chest_girth
  field :waist_girth
  field :thigh_girth
  
end
