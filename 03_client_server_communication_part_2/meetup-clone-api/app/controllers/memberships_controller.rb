class MembershipsController < ApplicationController
  def create
    membership = current_user.memberships.create!(membership_params)
    render json: membership, status: :created
  end

  private

  def membership_params
    params.permit(:group_id)
  end
end
