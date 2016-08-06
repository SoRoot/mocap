module ActorsHelper

	def set_default
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
		:thigh_girth].each { |x| self.x = 0 if self.x.blank? }
	end

end
