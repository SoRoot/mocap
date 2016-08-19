class Motion
  include Mongoid::Document
	validates :motion_record, presence: true

  field :_id
  field :actor
	field :motion_record
  field :role
  field :mood
  field :param, :type => Array
  field :downloaded
  field :start
  field :end
	field :status


  def self.search(actors, search_actor, search_gender, search_role, search_mood, search_description)
    found = Motion.all

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
      found = found.where(:description.include(search_description))
    end

    unless search_gender.blank?
      found.each do |x|
        n = x.actor
        a = actors.where(:name => n).first
        unless a.blank?
          if a.gender != search_gender
            found = found.not_in(:name => n)
          end
        end
      end
    end

    return found
  end

end
