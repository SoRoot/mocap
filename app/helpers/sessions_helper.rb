#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland
#

module SessionsHelper

	# Logs in the given user.
	def log_in(user)
		session[:user_id] = user.id
	end

	# Returns the current logged-in user (if any).
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
		!current_user.nil?
	end

	def require_user
		redirect_to '/login' unless logged_in?
	end

end
