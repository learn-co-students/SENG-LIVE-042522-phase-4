class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :membership

  def membership
    memberships[object.id]
  end
end
