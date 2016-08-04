class UsersController < ApplicationController
	include SessionsHelper
	 before_action :require_user

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to '/'
		else
			render '/users/new' 
		end		
	end

	private
	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

end
