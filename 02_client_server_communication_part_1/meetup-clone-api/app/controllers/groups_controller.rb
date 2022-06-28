class GroupsController < ApplicationController
  def index
    render json: Group.all
  end

  def show
    render json: Group.find(params[:id])
  end

  def create
    group = Group.create!(group_params)
    render json: group, status: :created # 201 status code
  end

  private

  def group_params
    params.permit(:name, :location)
  end


end
