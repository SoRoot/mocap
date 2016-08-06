class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@roles = Motion.distinct(:role)
  	@moods =  Motion.distinct(:mood)
  	@params =  Motion.distinct(:param)
  	@actors = Actor.all
  	@motions = Motion.all


 	@found = Motion.search(params[:search_actor], params[:search_gender], params[:search_role], params[:search_mood])
  	
  end
end
