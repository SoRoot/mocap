class StartupController < ApplicationController
  def index
  end

  def searchDB
  	@ary = Array.new(0)
  	Tag.all.each do |x|
  	    @ary.push(x.name)
  	end

  	@found = Motion.search(params[:search_actor], params[:search_gender], params[:search_role], params[:search_mood], params[:search_description]).paginate(:page => params[:page], :per_page => 12)
  end
end
