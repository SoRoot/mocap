#
# MOCAP.WEB - Werbprojekt und Interaktive Systeme
# Supervisors: Prof. Gruenvogel, Lo Iacono
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
    unless search_gender.blank?
      #found = found.where(:motion_record => MotionRecord.all.where(:actor => Actor.all.where(:gender => search_gender).first.name).first._id.to_s)


      unless found.blank?
        found.each do |x|
            rec = MotionRecord.all.where(:_id.to_s => x.motion_record).first     #get the MotionRecord
            a = Actor.all.where(:name => rec.actor).first                    #from the MotionRecord you are able to get the actor
            
            unless (a.gender == search_gender)                                  #if the gender of the actor is not the gender searched for
              found = found.not_in(:motion_record => rec._id.to_s)              #take out all motions that belong to that MotionRecord
            end
        end
      end
    end

    unless search_actor.blank?
      unless MotionRecord.all.where(:actor => search_actor).blank?
        found = found.where( motion_record: MotionRecord.all.where(:actor => search_actor).first._id.to_s )
        #found = found.where( motion_record: MotionRecord.all.where(:actor => search_actor).first._id.to_s )
      else
        found = found.where(:_id => "")                                       #if actor doesn't have a motion return null
      end
    end

    unless search_role.blank?
      found = found.where(:role => search_role)
    end

    unless search_mood.blank?
      found = found.where(:mood => search_mood)
    end

    unless search_description.blank?
      descList = Array.new(0)

      search_description.each do |desc|
        unless desc.blank?
          descList.push(Tag.all.where(:name => desc).first._id.to_s )
        end
      end
      
      found = found.where(:tags.in => descList)
    end

    return found
  end

end
