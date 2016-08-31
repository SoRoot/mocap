#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

class MotionRecord
  include Mongoid::Document
	
	validates :actor, :c3d_path, :bvh_path, presence: true 
	
  field :actor, type: String
  field :c3d_path, type: String
  field :bvh_path, type: String
	field :fbx_path, type: String
  field :uploader_id, type: String
	
end

