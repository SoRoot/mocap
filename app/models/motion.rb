class Motion
  include Mongoid::Document
	validates :motion_record, presence: true

  field :_id
  field :actor
	field :motion_record
  field :role
  field :mood
	field :param
  field :downloaded
  field :start
  field :end
	field :status


  def self.search(actors, search_actor, search_gender, search_role, search_mood, search_description)    #search the database for the corresponding motions
    found = Motion.all
    t = found
    unless search_gender.blank?
      unless found.blank?
        found.each do |x|
            rec = MotionRecord.all.where(:_id => x.motion_record.to_s).first  #get the MotionRecord
            a = actors.where(:_id => rec.actor.to_s).first                    #from the MotionRecord you are able to get the actor
            
            unless (a.gender == search_gender)                                  #if the gender of the actor is not the gender searched for
              t = t.not_in(:motion_record.to_s => rec._id)              #take out all motions that belong to that MotionRecord
            end
        end
      end
    end
    found = t

    unless search_actor.blank?
      found = found.where(:actor => search_actor)
    end

    unless search_role.blank?
      found = found.where(:role => search_role)
    end

    unless search_mood.blank?
      found = found.where(:mood => search_mood)
    end

    unless search_description.blank?
      search_description.each do |desc|
        unless desc.blank?
          found = found.where(:param => desc)
        end
      end
    end

    return found
  end

end
