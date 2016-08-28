class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@params =  Motion.distinct(:param)
  	@ary = Array.new(0)
	@params.each do |x|
	    @ary.push(x)
	end

  	@actors = Actor.all
  	@mr = MotionRecord.all

 	@found = Motion.search(params[:search_actor], params[:search_gender], params[:search_role], params[:search_mood], params[:search_description]).paginate(:page => params[:page], :per_page => 12)

  end
end
