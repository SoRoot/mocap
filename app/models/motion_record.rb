class MotionRecord
  include Mongoid::Document
	
	validates :actor, :c3d_path, :bvh_path, presence: true 
	
  field :actor, type: String
  field :c3d_path, type: String
  field :bvh_path, type: String
	field :fbx_path, type: String
  field :uploader_id, type: String
	
end

