class StartupController < ApplicationController
  def index
  end

  def searchDB
  	#renders the tags into an Array for the tag multi select dropdown
  	@ary = Array.new(0)
  	Tag.all.each do |x|
  	    @ary.push(x.name)
  	end

  	#starts the search Algorithm placed in motion.rb and hands it the params the search form returns
  	@found = Motion.search(params[:search_actor], params[:search_gender], params[:search_role], params[:search_mood], params[:search_description]).paginate(:page => params[:page], :per_page => 12)
  end
end
