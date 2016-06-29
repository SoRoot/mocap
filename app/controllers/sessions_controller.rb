class SessionsController < ApplicationController
	include SessionsHelper
	
	def new
	end

	def create
	@user = User.find_by(username: params[:session][:username])
		if @user && @user.authenticate(params[:session][:password])
			log_in @user
			redirect_to '/'
		else
			flash.now[:danger] = 'Invalid Username/password combination'
			render 'new'
		end 
	end

	def destroy
		session[:user_id] = nil 
		redirect_to '/' 
	end

end
