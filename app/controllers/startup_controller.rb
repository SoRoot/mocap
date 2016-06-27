class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@actor = Actor.all
  	@motions = Motion.all
  end
end
