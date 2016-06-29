class Actor
  include Mongoid::Document
  field :name, type: String
  field :weight, type: Float
  field :gender, type: Integer
  field :body_height, type: Float
  field :shoulder_width, type: Float
  field :shoulder_height, type: Float
  field :inner_leg_length, type: Float
  field :tibia_length, type: Float
  field :body_depth, type: Float
  field :hip_width, type: Float
  field :seat_height, type: Float
  field :shoulder_elbow_length, type: Float
  field :elbow_wrist_length, type: Float
  field :chest_girth, type: Float
  field :waist_girth, type: Float
  field :thigh_girth, type: Float
end
