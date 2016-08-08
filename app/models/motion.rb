class Motion
  include Mongoid::Document
  field :actor
  field :c3d_file
  field :bvh_file
  field :fbx_file
  field :role
  field :mood
  field :param, :type => Array
  field :downloaded
  field :start
  field :end

  def self.search(search_actor, search_gender, search_role, search_mood)
    found = Motion.all

    unless search_actor.blank?
      found = found.where(:actor => search_actor)
    end

    unless search_gender.blank?
      found = found.where(:gender => search_role)
    end

    unless search_role.blank?
      found = found.where(:role => search_role)
    end

    unless search_mood.blank?
      found = found.where(:mood => search_role)
    end
    return found
  end

end
