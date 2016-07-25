class Actor
  include Mongoid::Document
  include ActiveModel::Model

  validates :name, presence: true
  validates :weight, presence: true
  validates :gender, presence: true
  validates :body_height, presence: true

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
