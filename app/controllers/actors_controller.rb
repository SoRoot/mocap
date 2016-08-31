#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

class ActorsController < ApplicationController
	include SessionsHelper
	before_action :require_user
	before_action :set_actor, only: [:show, :edit, :update, :destroy]
	before_action :set_default

	# GET /actors
	# GET /actors.json
	def index
		@actors = Actor.all
	end

	# GET /actors/1
	# GET /actors/1.json
	def show
	end

	# GET /actors/new
	def new
		@actor = Actor.new
	end

	# GET /actors/1/edit
	def edit
	end

	# POST /actors
	# POST /actors.json
	def create
		@actor = Actor.new(actor_params)

		if @actor.save
			redirect_to '/'
		else
			render '/actors/new'
		end
	end

	# PATCH/PUT /actors/1
	# PATCH/PUT /actors/1.json
	def update
		respond_to do |format|
			if @actor.update(actor_params)
				format.html { redirect_to @actor }
				format.json { render :show, status: :ok, location: @actor }
			else
				format.html { render :edit }
				format.json { render json: @actor.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /actors/1
	# DELETE /actors/1.json
	def destroy
		@actor.destroy
		respond_to do |format|
			format.html { redirect_to actors_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_actor
		@actor = Actor.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def actor_params
		params.require(:actor).permit(:name, :weight, :gender, :body_height, :shoulder_width, :shoulder_height, :inner_leg_length, :tibia_length, :body_depth, :hip_width, :seat_height, :shoulder_elbow_length, :elbow_wrist_length, :chest_girth, :waist_girth, :thigh_girth)
	end


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
		:thigh_girth].each { |x| x = 0 if x.blank? }
	end


end
