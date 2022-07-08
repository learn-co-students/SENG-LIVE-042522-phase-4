class MembershipsController < ApplicationController
  before_action :set_membership, only: [:destroy]
  before_action :authorize_user, only: [:destroy]

  def create
    membership = current_user.memberships.create!(membership_params)
    render json: membership, status: :created
  end

  def destroy
    @membership.destroy
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
  end

  def authorize_user
    return if current_user.admin? || @membership.user == current_user
    render json: { errors: "You are not permitted to perform that action." }, status: :forbidden
  end

  def membership_params
    params.permit(:group_id)
  end
end
