module MotionRecordsHelper
	
	def id_to_path(id)	
		mr = MotionRecord.find(id)
		[mr.bvh_path, mr.c3d_path, mr.fbx_path].compact.first
	end

end
