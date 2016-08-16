class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@roles = Motion.distinct(:role)
  	@moods =  Motion.distinct(:mood)
  	@params =  Motion.distinct(:param)
  	@actors = Actor.all
  	@motions = Motion.all

 	@found = Motion.search(@actors, params[:search_actor], params[:search_gender], params[:search_role], params[:search_mood], params[:search_description]).paginate(:page => params[:page], :per_page => 12)

  end
end
