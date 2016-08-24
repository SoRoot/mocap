class MotionsController < ApplicationController
	include SessionsHelper
	before_action :require_user
	before_action :set_motion, only: [:show, :edit, :update, :destroy]

	attr_accessor :test
	attr_reader :test

	# GET /motions
	# GET /motions.json
	def index
		@motions = Motion.all
	end

	# GET /motions/1
	# GET /motions/1.json
	def show
	end

	# GET /motions/new
	def new
		@motion = Motion.new
	end

	# GET /motions/1/edit
	def edit
	end

	# POST /motions
	# POST /motions.json
	def create
		params[:motion][:motion_record] = params[:motion_record]
		params[:motion][:param] = params[:param]
		@motion = Motion.new(motion_params)

		puts params[:more]
		if params[:more] == 'true'
			if @motion.save
				redirect_to controller: 'motions', action: 'new', motion_record: params[:motion_record]
			else
				render :new 
			end
		else
			if @motion.save
				redirect_to '/', notice: 'Motion was successfully created.' 
			else
				render :new 
			end
		end
	end

	# PATCH/PUT /motions/1
	# PATCH/PUT /motions/1.json
	#def update
		#respond_to do |format|
			#if @motion.update(motion_params)
				#format.html { redirect_to => '/motion', notice: 'Motion was successfully updated.' }
				#format.json { render :show, status: :ok, location: @motion }
			#else
				#format.html { render :edit }
				#format.json { render json: @motion.errors, status: :unprocessable_entity }
			#end
		#end
	#end

	# DELETE /motions/1
	# DELETE /motions/1.json
	def destroy
		@motion.destroy
		respond_to do |format|
			format.html { redirect_to motions_url, notice: 'Motion was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_motion
		#@motion = Motion.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def motion_params
		params.require(:motion).permit(:motion_record, :role, :mood, :param, :start, :end)
	end
end
