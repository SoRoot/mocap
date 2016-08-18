class MotionRecordsController < ApplicationController
	include SessionsHelper
	before_action :set_motion_record, only: [:show, :edit, :update, :destroy]

	def index
		@motion_records = MotionRecord.all
	end

	def show
	end

	# GET /motion_records/new
	def new
		@motion_record = MotionRecord.new
	end

	def create
		filenames = upload
		params[:motion_record][:c3d_path] = filenames[:c3d]
		params[:motion_record][:bvh_path] = filenames[:bvh]
		params[:motion_record][:uploader_id] = current_user._id.to_s
		@motion_record = MotionRecord.new(motion_record_params)

		if @motion_record.save
			redirect_to controller: 'motions', action: 'new', motion_record: @motion_record
		else
			render :new
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_motion_record
		@motion_record = MotionRecord.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def motion_record_params
		params.require(:motion_record).permit(:actor, :c3d_path, :bvh_path, :uploader_id)
	end

	private
	def upload
		returnpaths = {}
		if params[:motion_record][:c3d_path]
			c3dfile = SecureRandom.uuid + '.c3d'
			uploaded_io = params[:motion_record][:c3d_path]

			File.open(Rails.root.join('public', 'uploads', c3dfile), 'wb') do |file|
				file.write(uploaded_io.read)
			end
			returnpaths[:c3d] = c3dfile
		end
		if params[:motion_record][:bvh_path]
			bvhfile = SecureRandom.uuid + '.bvh'
			uploaded_io = params[:motion_record][:bvh_path]

			File.open(Rails.root.join('public', 'uploads', bvhfile), 'wb') do |file|
				file.write(uploaded_io.read)
			end
			returnpaths[:bvh] = bvhfile
		end
		return returnpaths
	end
end
