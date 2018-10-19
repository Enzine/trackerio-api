class CompletedActivitiesController < ApplicationController
  before_action :set_completed_activity, only: [:show, :update, :destroy]

  # GET /completed_activities
  def index
    # @completed_activities = CompletedActivity.where(user: params[:user])
    @completed_activities = 
    CompletedActivity
      .where(completed_activities: { user: params[:user]})
      .includes(:completed_activity_categories)

    render json: @completed_activities.to_json(:include => [{:completed_activity_categories => {:only => :category_id}}])
  end


  # POST /completed_activities
  def create
    @completed_activity = CompletedActivity.new(completed_activity_params)

    if @completed_activity.save
      render json: @completed_activity, status: :created, location: @completed_activity
    else
      render json: @completed_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /completed_activities/1
  def update
    if @completed_activity.update(completed_activity_params)
      render json: @completed_activity
    else
      render json: @completed_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /completed_activities/1
  def destroy
    @completed_activity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed_activity
      @completed_activity = CompletedActivity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def completed_activity_params
      params.require(:completed_activity).permit(:time, :place, :duration, :description)
    end
end
