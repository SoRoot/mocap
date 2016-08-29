module MotionRecordsHelper
	
	def id_to_path(id)	
		mr = MotionRecord.find(id)
		mr.bvh_path
	end

end
