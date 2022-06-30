class GroupsController < ApplicationController
  def index
    render json: Group.all, scope: memberships, scope_name: :memberships
  end

  def show
    render json: Group.find(params[:id]), serializer: GroupDetailSerializer
  end

  def create
    group = Group.create!(group_params)
    render json: group, status: :created # 201 status code
  end

  private

  def group_params
    params.permit(:name, :location)
  end

  # gather the current user's memberships in a hash
  # the group_id of the membership will be the key
  # and the entire membership object will be its value
  # we'll pass this to our serializer via the options:
  # scope & scope_name when we render the groups as json
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
