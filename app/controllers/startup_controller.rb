class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@roles = Motion.distinct(:role)
  	@moods =  Motion.distinct(:mood)
  	@params =  Motion.distinct(:param)
  	@actors = Actor.all
  	@motions = Motion.all
  end
end
