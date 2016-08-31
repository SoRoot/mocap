#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Dr. Gruenvogel, Prof. Dr. Lo Iacono
# TH Koeln SS 2016
# Author: Lukas Ungerland, Marie-Luise Lux
#

class Motion
  include Mongoid::Document
	validates :motion_record, :role, :mood, :tags, :start, :end, presence: true

	field :motion_record
  field :role
  field :mood
	field :tags
  field :start
  field :end


  def self.search(search_actor, search_gender, search_role, search_mood, search_description)    #search the database for the corresponding motions
    found = Motion.all
    # the search for gender and actor do not work since I didn't have time to change everithing
    # after the spontaneous remodelling of the database some days bevore the deadline

    unless search_gender.blank?
      unless found.blank?
        Motion.all.each do |x|
            rec = MotionRecord.all.where(:_id.to_s => x.motion_record).first     #get the MotionRecord
            a = Actor.all.where(:name => rec.actor).first                    #from the MotionRecord you are able to get the actor
            
            unless (a.gender == search_gender)                                  #if the gender of the actor is not the gender searched for
              found = found.not_in(:motion_record => rec._id)              #take out all motions that belong to that MotionRecord
            end
        end
      end
    end

    unless search_actor.blank?
      found.each do |x|
        rec = MotionRecord.all.where(:_id => x.motion_record).first     #get the MotionRecord
        unless (rec.actor == search_actor)                               #if the gender of the actor is not the gender searched for
          found = found.not_in(:motion_record => rec._id.to_s)              #take out all motions that belong to that MotionRecord
        end       #not_in works with a string of the id but for some reason not with the variable
      end
    end

    unless search_role.blank? #if a role was chosen take out all motions not having it
      found = found.where(:role => search_role)
    end

    unless search_mood.blank? #if a mood was chosen take out all motions not having it
      found = found.where(:mood => search_mood)
    end

    unless search_description.blank? 
      descList = Array.new(0)

      search_description.each do |desc|
        unless desc.blank?  #insert the ids of the chosen params to an Array
          descList.push(Tag.all.where(:name => desc).first._id.to_s )
        end
      end
      #check which tag Array of which Motions contains all these
      found = found.where(:tags.in => descList)
    end

    return found
  end

end
