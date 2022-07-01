class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :membership

  def membership
    memberships[object.id]
  end

  # gather the current user's memberships in a hash
  # the group_id of the membership will be the key
  # and the entire membership object will be its value
  # we do this to cut down on the number of queries
  def memberships
    if @memberships
      @memberships
    else
      @memberships = {}
      current_user.memberships.each do |membership|
        @memberships[membership.group_id] = membership
      end
      @memberships
    end
  end
end
