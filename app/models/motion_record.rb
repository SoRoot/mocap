class MotionRecord
  include Mongoid::Document
  field :actor, type: String
  field :c3d_path, type: String
  field :bvh_path, type: String
  field :uploader_id, type: String
	validates :c3d_path, :bvh_path, presence: true, if: 'check_paths' 
end

def check_paths
	!(c3d_path or bvh_path)
end
