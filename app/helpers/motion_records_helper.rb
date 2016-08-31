#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

module MotionRecordsHelper
	
	def id_to_path(id)	
		mr = MotionRecord.find(id)
		mr.bvh_path
	end

end
